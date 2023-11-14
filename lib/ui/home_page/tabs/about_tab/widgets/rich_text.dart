import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  final String underlineText;
  final String text;

  const MyRichText({
    super.key,
    required this.text,
    required this.underlineText,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: underlineText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
