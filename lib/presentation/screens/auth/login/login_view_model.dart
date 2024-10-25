part of 'login_imports.dart';

class LoginViewModel {
  final Repositories repositories;

  LoginViewModel({required this.repositories});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  login(context) async {
    var loginData = await repositories.authRepo.userLogin(
        email: emailController.text,
        password: passwordController.text,
        context: context);
    Vx.log(loginData.accessToken);
    Vx.log(loginData.message);
    if (loginData.accessToken != null) {
      Utils.saveTokens(loginData.accessToken!.toString());
      AutoRouter.of(context).push(const GeneralRoute());
    }
  }
  // AutoRouter.of(context).push(const GeneralRoute());
}
