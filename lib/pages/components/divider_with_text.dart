import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
  final String text;

  const TextDivider({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Row(
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
      ),
    );
  }
}
