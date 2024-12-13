part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late LoginViewModel loginViewModel;

  @override
  void initState() {
    loginViewModel = LoginViewModel(repositories: context.read<Repositories>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: FadedScaleAnimation(
          child: ListView(
            children: [
              Image.asset(
                MyAssets.assetsImagesMainLogo,
                height: 42.h,
                width: 139.w,
              ).centered(),
              100.h.heightBox,
              Form(
                key: loginViewModel.formKey,
                child: Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        50.h.heightBox,
                        "Login"
                            .text
                            .size(18)
                            .color(MyColors.primaryColor)
                            .fontWeight(FontWeight.w700)
                            .makeCentered(),
                        48.h.heightBox,
                        "Email".text.make(),
                        8.heightBox,
                        VxTextField(
                          fillColor: Colors.transparent,
                          borderColor: MyColors.primaryColor,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10,
                          prefixIcon: const Icon(Icons.email),
                          keyboardType: TextInputType.emailAddress,
                          controller: loginViewModel.emailController,
                          validator: (email) {
                            if (email!.isEmpty) {
                              return 'Empty Email';
                            } else if (!email.isValidEmail) {
                              return 'Invalid Email';
                            }
                            return null;
                          },
                        ),
                        20.h.heightBox,
                        "Password".text.make(),
                        8.heightBox,
                        VxTextField(
                          isPassword: true,
                          obscureText: true,
                          fillColor: Colors.transparent,
                          borderColor: MyColors.primaryColor,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10,
                          prefixIcon: const Icon(Icons.lock),
                          controller: loginViewModel.passwordController,
                          validator: (password) {
                            if (password!.isEmpty) {
                              return 'Empty password';
                            }
                            return null;
                          },
                        ),
                        40.h.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 200,
                              child: CheckboxListTile(
                                contentPadding: EdgeInsets.zero,
                                value: false,
                                controlAffinity: ListTileControlAffinity.leading,
                                onChanged: (value) {},
                                title: "Remember Me".text.make(),
                              ),
                            ),
                            "Forgot Password".text.size(14).make(),
                          ],
                        ),
                        100.h.heightBox,
                        PrimaryButton(
                            title: "Login",
                            onPressed: () {
                              if (loginViewModel.formKey.currentState!.validate()) {
                                loginViewModel.login(context);
                              }
                            }),
                        20.h.heightBox,
                        "Don’t have an account ?"
                            .richText
                            .size(14)
                            .semiBold
                            .color(MyColors.primaryColor)
                            .withTextSpanChildren([
                          TextSpan(
                              text: " Sign Up",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () =>
                                    AutoRouter.of(context).replace(RegisterRoute()),
                              style:
                                  const TextStyle(fontWeight: FontWeight.w700)),
                        ]).makeCentered(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
