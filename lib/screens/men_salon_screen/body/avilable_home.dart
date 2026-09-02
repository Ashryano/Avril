import 'package:flutter/material.dart';

class AvilableHome extends StatelessWidget {
  const AvilableHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFE3DDF8), // خلفية بنفسجية هادئة
        borderRadius: BorderRadius.circular(12), // حواف دائرية ناعمة
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        textDirection: TextDirection.rtl, // لترتيب الأيقونة ثم النص من اليمين
        children: [
          // الأيقونة (يمكن استبدالها بـ SvgPicture.asset لو كان لديك ملف SVG)
          Icon(Icons.home_outlined, size: 16, color: const Color(0xFF6C5CE7)),
          const SizedBox(width: 4),
          // النص
          const Text(
            'متاح في المنزل',
            style: TextStyle(
              color: Color(0xFF6C5CE7), // لون النص بنفسجي متناسق مع الأيقونة
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
