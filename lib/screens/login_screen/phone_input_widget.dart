import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneInputWidget extends StatelessWidget {
  const PhoneInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0, bottom: 10),
            child: Text(
              'رقم الجوال',
              style: TextStyle(fontFamily: 'ExpoArabic', fontSize: 14),
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
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'ادخل رقم الجوال',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'ExpoArabic',
                          fontSize: 16,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Image.asset('assets/Rectangle 144681.jpg'),
                  const SizedBox(width: 5),

                  Container(height: 20, width: 1.5, color: Colors.grey[300]),

                  const SizedBox(width: 5),

                  Text('966+'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
