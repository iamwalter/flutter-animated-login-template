import 'package:flutter/material.dart';
import 'package:testappnumbertwo/pages/login_view.dart';
import 'package:testappnumbertwo/pages/register_view.dart';
import '../common/string_button.dart';
import 'components/style.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginView(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            StringButton(
              title: "Sign Up",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterView(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
