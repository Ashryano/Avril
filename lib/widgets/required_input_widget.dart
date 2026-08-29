import 'package:flutter/material.dart';

class RequiredInputWidget extends StatelessWidget {
  const RequiredInputWidget({
    super.key,
    required this.containerAddress,
    required this.containerHint,
    this.controller,
    this.hasError = false, // استقبال حالة الخطأ من الشاشة الرئيسية
  });

  final String containerAddress;
  final String containerHint;
  final TextEditingController? controller;
  final bool hasError;

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
                const TextSpan(
                  text: '*',
                  style: TextStyle(
                    fontFamily: 'ExpoArabic',
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: containerAddress,
                  style: const TextStyle(
                    fontFamily: 'ExpoArabic',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(
                    color: hasError ? Colors.red : Colors.transparent,
                    width: 1.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: .5,
                      spreadRadius: .1,
                      offset: const Offset(0, 0),
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
                        controller: controller,
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: containerHint,
                          hintStyle: const TextStyle(
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
              if (hasError)
                const Padding(
                  padding: EdgeInsets.only(right: 20, top: 5),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'هذا الحقل مطلوب',
                      style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'ExpoArabic',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
