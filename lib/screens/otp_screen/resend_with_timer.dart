import 'dart:async';

import 'package:flutter/material.dart';

class ResendWithTimer extends StatefulWidget {
  final int initialSeconds;
  const ResendWithTimer({super.key, required this.initialSeconds});

  @override
  State<ResendWithTimer> createState() => _ResendWithTimerState();
}

class _ResendWithTimerState extends State<ResendWithTimer> {
  late int _remaningSeconds;
  bool _canResend = false;
  Timer? _timer;

  void startTimer() {
    setState(() {
      _remaningSeconds = widget.initialSeconds;
      _canResend = false;
    });
    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remaningSeconds > 0) {
        setState(() {
          _remaningSeconds--;
        });
      } else {
        setState(() {
          _canResend = true;
          _timer?.cancel();
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '00:${_remaningSeconds.toString().padLeft(2, '0')}',
          style: TextStyle(color: Colors.grey),
        ),

        GestureDetector(
          onTap: _canResend
              ? () {
                  startTimer();
                }
              : null,
          child: Text(
            'اعادة الارسال؟',
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
