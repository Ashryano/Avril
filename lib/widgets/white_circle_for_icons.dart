import 'package:flutter/material.dart';

class WhiteCircleForIcons extends StatelessWidget {
  const WhiteCircleForIcons({
    super.key,
    required this.circleIcon,
    required this.onPressed,
  });
  final IconData circleIcon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: IconButton(
        onPressed: onPressed,
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
