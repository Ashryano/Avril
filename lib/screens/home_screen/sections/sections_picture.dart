import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SectionsPicture extends StatelessWidget {
  const SectionsPicture({
    super.key,
    required this.image,
    required this.icon,
    required this.onTap,
  });
  final String image;
  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        height: 220,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),

              child: Image.asset(
                image,
                width: double.infinity,
                height: 220,
                fit: BoxFit.fill,
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.7),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  width: double.infinity,
                  height: 40,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SvgPicture.asset(icon, width: 24, height: 24),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
