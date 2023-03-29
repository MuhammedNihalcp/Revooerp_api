import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:revooerp/commen/api_url.dart';
import 'package:revooerp/screens/login/model/signin_model.dart';

class LoginService {
  Future<void> signinUser(SignInModel model) async {
    Dio dio = Dio();
    final url = ApiUrl();
    try {
      log('try keri');
      log(model.email.toString());
      log(model.password.toString());
      Response response = await dio.post(
        url.loginUrl,
        data: jsonEncode(model.toJson()),
      );
      log(response.statusCode.toString(), name: 'login status code');
      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        log(response.data, name: 'login responce');
      }
    } on DioError catch (e) {
      log(e.message.toString(), name: 'login error');
    }
  }
}
