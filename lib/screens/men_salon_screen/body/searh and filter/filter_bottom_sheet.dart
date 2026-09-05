import 'package:flutter/material.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  bool isHomeSelected = false;
  bool isCenterSelected = false;
  bool isTopRatedSelected = false; // 1. متغير خيار الأعلى تقييماً

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'تصفية النتائج',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'ExpoArabic',
              ),
            ),
            const SizedBox(height: 16),

            CheckboxListTile(
              title: const Text(
                'متاح في المنزل',
                textAlign: TextAlign.right,
                style: TextStyle(fontFamily: 'ExpoArabic'),
              ),
              value: isHomeSelected,
              activeColor: Colors.black,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (val) {
                setState(() {
                  isHomeSelected = val ?? false;
                });
              },
            ),

            CheckboxListTile(
              title: const Text(
                'متاح في المركز',
                textAlign: TextAlign.right,
                style: TextStyle(fontFamily: 'ExpoArabic'),
              ),
              value: isCenterSelected,
              activeColor: Colors.black,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (val) {
                setState(() {
                  isCenterSelected = val ?? false;
                });
              },
            ),

            // 2. إضافـة خيـار الأعلى تقييماً
            CheckboxListTile(
              title: const Text(
                'الأعلى تقييماً',
                textAlign: TextAlign.right,
                style: TextStyle(fontFamily: 'ExpoArabic'),
              ),
              value: isTopRatedSelected,
              activeColor: Colors.black,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (val) {
                setState(() {
                  isTopRatedSelected = val ?? false;
                });
              },
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                // 3. إرجاع النتيجة مع الخيار الجديد
                Navigator.pop(context, {
                  'isHome': isHomeSelected,
                  'isCenter': isCenterSelected,
                  'isTopRated': isTopRatedSelected,
                });
              },
              child: const Text(
                'تطبيق الفلتر',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ExpoArabic',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
