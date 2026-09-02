import 'package:flutter/material.dart';

class AvailableCenter extends StatelessWidget {
  const AvailableCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFFDF0F9), // خلفية وردية فاتحة
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        textDirection: TextDirection.rtl,
        children: [
          Icon(
            Icons.storefront_outlined, // أو الأيقونة الخاصة بالمركز
            size: 16,
            color: const Color(0xFFE040FB), // لون وردي/فوشيا للرمز
          ),
          const SizedBox(width: 4),
          const Text(
            'متاح في المركز',
            style: TextStyle(
              color: Color(0xFFE040FB), // لون وردي/فوشيا للنص
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
