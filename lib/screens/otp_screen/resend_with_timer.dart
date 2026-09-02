import 'dart:async';
import 'package:flutter/material.dart';

class ResendWithTimer extends StatefulWidget {
  final int initialSeconds;
  final VoidCallback? onResend; // إضافة callback لإرسال الطلب لـ API عند الضغط

  const ResendWithTimer({
    super.key,
    required this.initialSeconds,
    this.onResend,
  });

  @override
  State<ResendWithTimer> createState() => _ResendWithTimerState();
}

class _ResendWithTimerState extends State<ResendWithTimer> {
  late int _remainingSeconds; // تصحيح اسم المتغير من remaning إلى remaining
  bool _canResend = false;
  Timer? _timer;

  void startTimer() {
    setState(() {
      _remainingSeconds = widget.initialSeconds;
      _canResend = false;
    });

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) return; // حماية لعدم استدعاء setState بعد تدمير الصفحة

      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        setState(() {
          _canResend = true;
        });
        _timer?.cancel();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel(); // إلغاء المؤقت فور الخروج من الشاشة لمنع تسريب الذاكرة
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '00:${_remainingSeconds.toString().padLeft(2, '0')}',
          style: const TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: _canResend
              ? () {
                  startTimer();
                  widget.onResend?.call(); // تنفيذ أمر إعادة الإرسال الخارجي
                }
              : null,
          child: Text(
            'إعادة الإرسال؟',
            style: TextStyle(
              color: _canResend ? Colors.black : Colors.grey,
              fontFamily: 'ExpoArabic',
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
