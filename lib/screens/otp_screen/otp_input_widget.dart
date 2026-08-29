import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpInputWidget extends StatelessWidget {
  const OtpInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 6,
      defaultPinTheme: PinTheme(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: BoxBorder.all(
            color: const Color.fromARGB(255, 231, 231, 231),
            width: 1.5,
          ),
        ),
      ),

      focusedPinTheme: PinTheme(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 2),
        ),
      ),

      submittedPinTheme: PinTheme(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1.2),
        ),
      ),
    );
  }
}
