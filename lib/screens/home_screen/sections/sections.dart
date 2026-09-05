import 'package:avril/screens/men_salon_screen/salons_home/men_salon_home.dart';
import 'package:avril/screens/home_screen/sections/sections_picture.dart';
import 'package:flutter/material.dart';

class Sections extends StatelessWidget {
  const Sections({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 16.0, bottom: 12, top: 5),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'الاقسام',
                style: TextStyle(
                  fontFamily: 'ExpoArabic',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SectionsPicture(
            icon: 'assets/icons/Group 1171276204.svg',
            image: 'assets/beauty center.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MenSalon()),
              );
            },
          ),
          const SizedBox(height: 20),
          SectionsPicture(
            icon: 'assets/icons/Group 1171276204.svg',
            image: 'assets/beauty expert.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MenSalon()),
              );
            },
          ),
        ],
      ),
    );
  }
}
