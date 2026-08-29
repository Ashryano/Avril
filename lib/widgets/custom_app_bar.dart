import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 120,
      width: double.infinity,
      color: Colors.black,
      child: Image.asset('assets/Group 1171277592.png'),
    );
  }
}
