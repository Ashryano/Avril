import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OptionalInputWidget extends StatelessWidget {
  final String containerAdress;
  final String? containerAdressHint;
  final String containerHint;
  const OptionalInputWidget({
    super.key,
    required this.containerAdress,
    this.containerAdressHint,
    required this.containerHint,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 25.0, bottom: 10),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: containerAdress,
                  style: TextStyle(
                    fontFamily: 'ExpoArabic',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                const WidgetSpan(child: SizedBox(width: 4)),

                TextSpan(
                  text: containerAdressHint,
                  style: TextStyle(
                    fontFamily: 'ExpoArabic',
                    fontSize: 12,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 60,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: .5,
                  spreadRadius: .1,
                  offset: Offset(0, 0),
                ),
              ],

              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    inputFormatters: [LengthLimitingTextInputFormatter(9)],
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: containerHint,
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'ExpoArabic',
                        fontSize: 16,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
