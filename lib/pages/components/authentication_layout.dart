import 'package:flutter/material.dart';
import 'package:testappnumbertwo/common/scale_expanded_widget.dart';
import 'package:testappnumbertwo/pages/components/register_animation.dart';
import 'package:testappnumbertwo/pages/components/style.dart';

class AuthenticationLayout extends StatelessWidget {
  final String headerText;
  final Widget form;

  const AuthenticationLayout({
    Key? key,
    required this.headerText,
    required this.form,
  }) : super(key: key);

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
                          headerText,
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
                  child: ScaleExpandedWidget(
                    child: form,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
