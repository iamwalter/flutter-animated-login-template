import 'package:flutter/material.dart';
import 'package:testappnumbertwo/pages/components/authentication_layout.dart';
import 'package:testappnumbertwo/pages/components/register_form.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthenticationLayout(
      headerText: "Create Account",
      form: RegisterForm(),
    );
  }
}
