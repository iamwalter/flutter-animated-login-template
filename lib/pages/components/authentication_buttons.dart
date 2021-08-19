import 'package:flutter/material.dart';
import 'package:testappnumbertwo/common/string_button.dart';

import 'divider_with_text.dart';

class AuthenticationButtons extends StatelessWidget {
  final Widget firstButton;
  final Widget secondButton;

  const AuthenticationButtons({
    Key? key,
    required this.firstButton,
    required this.secondButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        firstButton,
        TextDivider(text: "or"),
        secondButton,
      ],
    );
  }
}
