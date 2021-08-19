import 'package:flutter/material.dart';
import 'package:testappnumbertwo/common/string_button.dart';
import 'authentication_buttons.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32.0, 16, 32, 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.mail_outline),
                hintText: "Email",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.lock),
                hintText: "Password",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.lock),
                hintText: "Password Again",
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 32.0)),
            AuthenticationButtons(
              firstButton: StringButton(
                onPressed: () => print("login"),
                title: "Register",
              ),
              secondButton: StringButton(
                backgroundColor: Colors.white,
                textColor: Colors.grey,
                onPressed: () => print("Log In"),
                title: "Log In",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
