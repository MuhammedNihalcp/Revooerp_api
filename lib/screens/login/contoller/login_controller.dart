import 'package:get/get.dart';
import 'package:revooerp/screens/login/model/signin_model.dart';
import 'package:revooerp/screens/login/service/login_service.dart';

class SignInController extends GetxController {
  bool isLoading = false;
  LoginService loginservice = LoginService();

  void signIn() {
    isLoading = true;
    update();
    final signinModel = SignInModel(
      username: 'joginder@revoo.in',
      password: 'password',
    );
    // loginservice.signinUser(signinModel).then((value) {
    //   if (value != null) {}
    // });
  }
}
