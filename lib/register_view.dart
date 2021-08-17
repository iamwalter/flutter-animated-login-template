import 'package:flutter/material.dart';
import 'package:testappnumbertwo/common/string_button.dart';
import 'common/register_animation.dart';
import 'style.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(left: 32.0),
                        child: Text(
                          "Welcome Back",
                          style: loginStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              ),
              Expanded(child: WaveAnimation()),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.white,
                  child: RegisterForm(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  Widget _buildAwesomeDivider(String text) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Divider(
              thickness: 3,
            )),
        Expanded(
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 3,
          child: Divider(
            thickness: 3,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32.0, 16, 32, 16),
        child: Column(
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: StringButton(
                        onPressed: () => print("login"),
                        title: "Log in",
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                        child: _buildAwesomeDivider("or"),
                      ),
                    ),
                    Expanded(
                      child: StringButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.grey,
                        onPressed: () => print("Sign Up"),
                        title: "Sign up",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
