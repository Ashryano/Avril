import 'package:avril/screens/login2_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'dart:async';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  int _remaningSeconds = 10;
  bool _canResend = false;
  Timer? _timer;

  void startTimer() {
    setState(() {
      _remaningSeconds = 10;
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
    startTimer(); // إعطاء أمر البدء للتايمر فور فتح الشاشة
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.black)),
              Expanded(flex: 2, child: Container(color: Colors.white)),
            ],
          ),

          Container(
            padding: EdgeInsets.only(top: 50),
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: double.maxFinite,
            height: 600,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black,
                      child: SizedBox(
                        width: 157,
                        height: 126,
                        child: Image.asset('assets/Asset.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: .5,
                            spreadRadius: .3,
                            offset: Offset(0, 0),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Text(
                            'كود التفعيل',
                            style: TextStyle(
                              fontFamily: 'ExpoArabic',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(flex: 1),

                          Text(
                            'من فضلك قم بإدخال الكود المرسل على رقم جوالك',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontFamily: 'ExpoArabic',
                            ),
                          ),

                          Spacer(flex: 3),
                          Pinput(
                            length: 6,
                            defaultPinTheme: PinTheme(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: BoxBorder.all(
                                  color: const Color.fromARGB(
                                    255,
                                    231,
                                    231,
                                    231,
                                  ),
                                  width: 1.5,
                                ),
                              ),
                            ),

                            focusedPinTheme: PinTheme(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ),
                            ),

                            submittedPinTheme: PinTheme(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.2,
                                ),
                              ),
                            ),
                          ),

                          Spacer(flex: 3),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.all(10),
                            height: 60,
                            width: double.infinity,

                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: .5,
                                  spreadRadius: .1,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return OtpScreen();
                                      },
                                    ),
                                  );
                                },
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return LoginDetails();
                                        },
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'دخول',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Spacer(flex: 2),
                          Text(
                            '00:${_remaningSeconds.toString().padLeft(2, '0')}',
                            style: TextStyle(color: Colors.grey),
                          ),

                          Spacer(flex: 2),
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
                          Spacer(flex: 3),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
