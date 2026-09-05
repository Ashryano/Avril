import 'package:avril/screens/home_screen/home_screen/home_screen.dart';
import 'package:avril/screens/home_screen/bottom_navigator_bar/main_navigation_screen/main_navigation_screen.dart';
import 'package:flutter/material.dart';

class VisitorLogin extends StatelessWidget {
  const VisitorLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const MainNavigationScreen()),
        );
      },
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
