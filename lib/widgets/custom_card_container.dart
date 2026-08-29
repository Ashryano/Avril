import 'package:flutter/material.dart';

class CustomCardContainer extends StatelessWidget {
  final List<Widget> children;
  final double topPadding;

  const CustomCardContainer({
    super.key,
    required this.children,
    this.topPadding = 220,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
              spreadRadius: .2,
            ),
          ],
        ),

        margin: EdgeInsets.symmetric(horizontal: 20),
        width: double.maxFinite,

        child: Column(mainAxisSize: MainAxisSize.min, children: children),
      ),
    );
  }
}
