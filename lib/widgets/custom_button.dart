import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.keyName,
    required this.navigateFunction,
  });
  final String keyName;
  final VoidCallback navigateFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigateFunction,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.all(10),
        height: 60,
        width: double.infinity,

        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: .5,
              spreadRadius: .1,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Center(
          child: Text(
            keyName,
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
