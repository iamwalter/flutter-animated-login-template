import 'package:flutter/material.dart';
import 'package:testappnumbertwo/common/string_button.dart';
import 'package:testappnumbertwo/pages/components/authentication_buttons.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
            Container(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () => {},
                child: Text(
                  "Forgot Password?",
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            AuthenticationButtons(
              firstButton: StringButton(
                onPressed: () => print("Log In"),
                title: "Log In",
              ),
              secondButton: StringButton(
                backgroundColor: Colors.white,
                textColor: Colors.grey,
                onPressed: () => print("Sign Up"),
                title: "Sign Up",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
