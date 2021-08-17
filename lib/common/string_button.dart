import 'package:flutter/material.dart';

class StringButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color backgroundColor;
  final Color textColor;

  const StringButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
      ),
      onPressed: onPressed,
      child: Container(
        height: 45,
        child: Center(
          child: Text(
            title,
            textScaleFactor: 1.2,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
