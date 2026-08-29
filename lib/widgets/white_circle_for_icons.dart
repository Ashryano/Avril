import 'package:flutter/material.dart';

class WhiteCircleForIcons extends StatelessWidget {
  const WhiteCircleForIcons({super.key, required this.circleIcon});
  final IconData circleIcon;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          width: 32,
          height: 32,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Icon(circleIcon, color: Colors.black),
        ),
      ),
    );
  }
}
