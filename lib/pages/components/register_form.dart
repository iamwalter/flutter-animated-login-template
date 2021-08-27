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

  void _handleRegister() {
    if (_formKey.currentState!.validate()) {
      // do something
    }
  }

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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
              },
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.lock),
                hintText: "Password",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
              },
              keyboardType: TextInputType.visiblePassword,
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.lock),
                hintText: "Password Again",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
              },
              keyboardType: TextInputType.visiblePassword,
            ),
            Padding(padding: EdgeInsets.only(bottom: 32.0)),
            AuthenticationButtons(
              firstButton: StringButton(
                onPressed: _handleRegister,
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
