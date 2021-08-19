import 'package:flutter/material.dart';
import 'package:testappnumbertwo/pages/components/login_form.dart';
import 'components/authentication_layout.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthenticationLayout(
      headerText: "Welcome Back",
      form: LoginForm(),
    );
  }
}
