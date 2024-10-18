part of 'auth_imports.dart';

@RoutePage()
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                MyAssets.assetsImagesBackgroundImage,
              ),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    MyAssets.assetsImagesMainLogo,
                    height: 42.h,
                    width: 139.h,
                    color: const Color.fromARGB(255, 254, 248, 246),
                  ),
                ),
                Spacer(),
                'Explore the world,\nBillions of Thoughts.'
                    .text
                    .size(28.sp)
                    .fontWeight(FontWeight.w900)
                    .color(Colors.white)
                    .align(TextAlign.start)
                    .make(),
                20.h.heightBox,
                PrimaryButton(
                  title: 'Login',
                  onPressed: () {
                    AutoRouter.of(context).push(LoginRoute());
                  },
                ),
                12.h.heightBox,
                OutlineButton(
                  title: 'Register',
                  onPressed: () {
                    AutoRouter.of(context).push(RegisterRoute());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
