import 'package:flutter/material.dart';
import 'package:testappnumbertwo/register_view.dart';
import 'common/string_button.dart';
import 'style.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "wwater",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 16.0, left: 32.0, right: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Water Delivery",
                style: loginStyle,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "We deliver water at any point of the Earth in 30 minutes",
                style: subtextStyle,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            StringButton(
              backgroundColor: Colors.white,
              textColor: Colors.blue,
              title: "Log In",
              onPressed: () => print("login pressed"),
            ),
            SizedBox(
              height: 10,
            ),
            StringButton(
              title: "Sign Up",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterView()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

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
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 32.0, right: 32.0),
            child: TextFormField(
              autofillHints: ["password"],
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter some text';
                }
                return null;
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) print("valid");
            },
            child: Text("button"),
          )
        ],
      ),
    );
  }
}
