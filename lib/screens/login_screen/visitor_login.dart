import 'package:flutter/material.dart';

class VisitorLogin extends StatelessWidget {
  const VisitorLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        'دخول كزائر',
        style: TextStyle(
          fontFamily: 'ExpoArabic',
          decoration: TextDecoration.underline,
          fontSize: 20,
        ),
      ),
    );
  }
}
