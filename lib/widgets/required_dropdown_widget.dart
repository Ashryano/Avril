import 'package:flutter/material.dart';

class RequiredDropdownWidget extends StatelessWidget {
  final List<String> dropDown;
  final String containerAddress;
  final String containerHint;
  final String? selectedValue;
  final ValueChanged<String?>? onChanged;
  final bool hasError; // إضافة متغير الخطأ

  const RequiredDropdownWidget({
    super.key,
    required this.dropDown,
    required this.containerAddress,
    required this.containerHint,
    this.selectedValue,
    this.onChanged,
    this.hasError = false, // تعيين القيمة الافتراضية بـ false
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // عنوان الحقل
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
                padding: const EdgeInsets.symmetric(horizontal: 16),
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
                child: DropdownButtonHideUnderline(
                  child: Directionality(
                    textDirection: TextDirection
                        .rtl, // تحديد اتجاه الواجهة من اليمين للشمال
                    child: DropdownButton<String>(
                      value: selectedValue,
                      isExpanded: true,
                      hint: Text(
                        containerHint,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontFamily: 'ExpoArabic',
                          fontSize: 16,
                        ),
                      ),
                      items: dropDown.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              fontFamily: 'ExpoArabic',
                              fontSize: 16,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: onChanged,
                    ),
                  ),
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
