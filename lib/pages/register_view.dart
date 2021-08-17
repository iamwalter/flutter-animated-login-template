import 'package:flutter/material.dart';
import 'package:testappnumbertwo/common/scale_expanded_widget.dart';
import 'package:testappnumbertwo/common/string_button.dart';
import 'package:testappnumbertwo/pages/components/divider_with_text.dart';
import 'components/register_animation.dart';
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
        // physics: FixedExtentScrollPhysics(),
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
                  child: ScaleExpandedWidget(child: RegisterForm()),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                StringButton(
                  onPressed: () => print("login"),
                  title: "Log in",
                ),
                TextDivider(text: "or"),
                StringButton(
                  backgroundColor: Colors.white,
                  textColor: Colors.grey,
                  onPressed: () => print("Sign Up"),
                  title: "Sign up",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
