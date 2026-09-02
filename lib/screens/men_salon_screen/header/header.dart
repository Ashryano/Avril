import 'package:avril/widgets/back_arrow.dart';
import 'package:avril/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      children: [
        const Positioned(
          bottom: 19,
          left: 0,
          right: 0,
          child: Text(
            'صالون رجالي',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'ExpoArabic',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Positioned(right: 16, bottom: 19, child: BackArrow()),
      ],
    );
  }
}
