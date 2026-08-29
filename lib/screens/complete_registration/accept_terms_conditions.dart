import 'package:avril/screens/complete_registration/terms%20and%20conditions/terms_conditions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AcceptTermsandconditions extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;

  const AcceptTermsandconditions({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text.rich(
          TextSpan(
            children: [
              const TextSpan(
                text: 'أوافق على ',
                style: TextStyle(
                  fontFamily: 'ExpoArabic',
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: 'الشروط والأحكام',
                style: const TextStyle(
                  fontFamily: 'ExpoArabic',
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const TermsAndConditions(),
                      ),
                    );
                  },
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: isChecked,
            activeColor: Colors.black,
            checkColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
