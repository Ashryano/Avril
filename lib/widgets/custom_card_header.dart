import 'package:flutter/material.dart';

class CustomCardHeader extends StatelessWidget {
  const CustomCardHeader({
    super.key,
    required this.headText,
    required this.hintText,
  });

  final String headText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          headText,
          style: TextStyle(
            fontFamily: 'ExpoArabic',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),

        Text(
          hintText,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontFamily: 'ExpoArabic',
          ),
        ),
      ],
    );
  }
}
