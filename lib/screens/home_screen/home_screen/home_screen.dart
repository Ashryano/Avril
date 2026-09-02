import 'package:avril/screens/home_screen/banner/banner_slider.dart';
import 'package:avril/screens/home_screen/bottom_navigator_bar/bottom_navigator_bar.dart';
import 'package:avril/screens/home_screen/sections/sections.dart';
import 'package:avril/widgets/custom_app_bar.dart';
import 'package:avril/widgets/white_circle_for_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<String> bannerImages = const [
    'assets/Frame 1984078572.png',
    'assets/Frame 1984078572.png',
    'assets/Frame 1984078572.png',
    'assets/Frame 1984078572.png',
    'assets/Frame 1984078572.png',
    'assets/Frame 1984078572.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const CustomAppBar(),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, right: 8, left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        WhiteCircleForIcons(circleIcon: Icons.notifications),
                        WhiteCircleForIcons(circleIcon: Icons.message),
                      ],
                    ),
                    SizedBox(
                      child: SvgPicture.asset(
                        'assets/Group.svg',
                        width: 53,
                        height: 42,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          BannerSlider(bannerImages: bannerImages),

          Expanded(child: Sections()),
        ],
      ),
      bottomNavigationBar: BottomNavigatoinBar(),
    );
  }
}
