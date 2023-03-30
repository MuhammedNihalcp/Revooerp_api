import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:revooerp/screens/login/model/signin_model.dart';
import 'package:revooerp/screens/login/service/login_service.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            onPressed: () {
              LoginService().signinUser(
                SignInModel(
                  username: 'joginder@revoo.in',
                  password: 'password',
                ),
              );
            },
            child: const Text('Login'),
          ),
        ),
      ),
    );
  }
}
