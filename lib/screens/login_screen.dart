import 'package:avril/screens/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                            'تسجيل دخول',
                            style: TextStyle(
                              fontFamily: 'ExpoArabic',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(flex: 1),

                          Text(
                            'مرحبا بعودتك, قم بتسجيل الدخول',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontFamily: 'ExpoArabic',
                            ),
                          ),
                          Spacer(flex: 4),
                          Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 25.0,
                                    bottom: 10,
                                  ),
                                  child: Text(
                                    'رقم الجوال',
                                    style: TextStyle(
                                      fontFamily: 'ExpoArabic',
                                      fontSize: 14,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text('+966'),
                                        const SizedBox(width: 5),

                                        Container(
                                          height: 20,
                                          width: 1.5,
                                          color: Colors.grey[300],
                                        ),

                                        const SizedBox(width: 5),
                                        Image.asset(
                                          'assets/Rectangle 144681.jpg',
                                        ),
                                        const SizedBox(width: 12),
                                        Expanded(
                                          child: TextField(
                                            inputFormatters: [
                                              LengthLimitingTextInputFormatter(
                                                9,
                                              ),
                                            ],
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
                                      ],
                                    ),
                                  ),
                                ),
                              ],
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
                          Spacer(flex: 3),
                          GestureDetector(
                            child: Text(
                              'دخول كزائر',
                              style: TextStyle(
                                fontFamily: 'ExpoArabic',
                                decoration: TextDecoration.underline,
                                fontSize: 20,
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
