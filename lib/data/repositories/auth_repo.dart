import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../presentation/screens/auth/login/login_model.dart';
import '../datasources/remote/api_client.dart';
import '../datasources/remote/api_endpoint.dart';

class AuthRepo extends ApiClient {
  
  AuthRepo();

  Future<LoginModel> userLogin(
      {required String email,
      required String password,
      required BuildContext context}) async {
    Map body = {
      "email": email,
      "password": password,
    };

    try {
      final response = await postRequest(path: ApiEndpoint.login, body: body);
      if (response.statusCode == 200) {
        // final responseData = tagsModelFromJson(jsonEncode(response.data));

        final responseData = LoginModel.fromJson(response.data);
        return responseData;
      } else {
        return LoginModel();
      }
    } on Exception catch (e) {
      VxToast.show(context, msg: e.toString());
      return LoginModel();
    }
  }
}
