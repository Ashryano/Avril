import 'package:avril/screens/otp_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginDetails extends StatefulWidget {
  const LoginDetails({super.key});

  @override
  State<LoginDetails> createState() => _LoginDetailsState();
}

class _LoginDetailsState extends State<LoginDetails> {
  bool isChecked = false;
  final usernameController = TextEditingController();

  String? selectedCity;
  String? selectedGender;

  final List<String> cities = [
    'القاهرة',
    'الجيزة',
    'الإسكندرية',
    'المنصورة',
    'أسوان',
  ];
  final List<String> genders = ['ذكر', 'أنثى'];

  bool showErrors = false;

  void validateAndContinue() {
    setState(() {
      showErrors = true;
    });

    if (usernameController.text.trim().isEmpty ||
        selectedCity == null ||
        selectedGender == null) {
      return;
    }

    print('tapped');
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
            height: 850,
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
                    flex: 4,
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
                            'استكمال البيانات',
                            style: TextStyle(
                              fontFamily: 'ExpoArabic',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),

                          Text(
                            'قم باستكمال البيانات الخاصة بك',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontFamily: 'ExpoArabic',
                            ),
                          ),
                          Spacer(flex: 2),
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
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                            fontFamily: 'ExpoArabic',
                                            fontSize: 16,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'اسم المستخدم',
                                          style: TextStyle(
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
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        height: 60,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            32,
                                          ),

                                          border: Border.all(
                                            color:
                                                showErrors &&
                                                    usernameController.text
                                                        .trim()
                                                        .isEmpty
                                                ? Colors.red
                                                : Colors.transparent,
                                            width: 1.5,
                                          ),

                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(
                                                0.3,
                                              ),
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
                                            Expanded(
                                              child: TextField(
                                                controller: usernameController,
                                                onChanged: (value) {
                                                  setState(() {});
                                                },

                                                textAlign: TextAlign.right,
                                                keyboardType:
                                                    TextInputType.text,
                                                decoration: InputDecoration(
                                                  hintText: 'اسم المستخدم',
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
                                      if (showErrors &&
                                          usernameController.text
                                              .trim()
                                              .isEmpty)
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 20,
                                            top: 5,
                                          ),
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              'الحقل مطلوب',
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
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 25.0,
                                    bottom: 10,
                                  ),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'البريد الإلكتروني ',
                                          style: TextStyle(
                                            fontFamily: 'ExpoArabic',
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '(اختياري)',
                                          style: TextStyle(
                                            fontFamily: 'ExpoArabic',
                                            fontSize: 12,
                                            color: Colors
                                                .grey
                                                .shade400, // خط مخفي / رمادي فاتح
                                          ),
                                        ),
                                      ],
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
                                        Expanded(
                                          child: TextField(
                                            inputFormatters: [
                                              LengthLimitingTextInputFormatter(
                                                9,
                                              ),
                                            ],
                                            textAlign: TextAlign.right,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            decoration: InputDecoration(
                                              hintText: 'البريد الالكترونى',
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
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 25.0,
                                    bottom: 10,
                                  ),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                            fontFamily: 'ExpoArabic',
                                            fontSize: 16,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'اسم المدينة',
                                          style: TextStyle(
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
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        height: 60,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            32,
                                          ),

                                          border: Border.all(
                                            color:
                                                showErrors &&
                                                    selectedCity == null
                                                ? Colors.red
                                                : Colors.transparent,
                                            width: 1.5,
                                          ),

                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(
                                                0.3,
                                              ),
                                              blurRadius: .5,
                                              spreadRadius: .1,
                                              offset: Offset(0, 0),
                                            ),
                                          ],

                                          color: Colors.white,
                                        ),
                                        child: // بدلاً من Row(children: [Expanded(child: TextField(controller: cityController ...))])
                                        DropdownButtonHideUnderline(
                                          child: DropdownButton<String>(
                                            value: selectedCity,
                                            hint: Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                'اسم المدينة',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'ExpoArabic',
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            isExpanded: true,
                                            icon: Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Colors.grey,
                                            ),
                                            alignment: Alignment.centerRight,
                                            items: cities.map((String city) {
                                              return DropdownMenuItem<String>(
                                                value: city,
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text(
                                                    city,
                                                    style: TextStyle(
                                                      fontFamily: 'ExpoArabic',
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                selectedCity = newValue;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      if (showErrors && selectedCity == null)
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 20,
                                            top: 5,
                                          ),
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              'الحقل مطلوب',
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
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 25.0,
                                    bottom: 10,
                                  ),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                            fontFamily: 'ExpoArabic',
                                            fontSize: 16,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'الجنس',
                                          style: TextStyle(
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
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        height: 60,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            32,
                                          ),

                                          border: Border.all(
                                            color:
                                                showErrors &&
                                                    selectedGender == null
                                                ? Colors.red
                                                : Colors.transparent,
                                            width: 1.5,
                                          ),

                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(
                                                0.3,
                                              ),
                                              blurRadius: .5,
                                              spreadRadius: .1,
                                              offset: Offset(0, 0),
                                            ),
                                          ],

                                          color: Colors.white,
                                        ),
                                        child: // بدلاً من Row(children: [Expanded(child: TextField(controller: genderController ...))])
                                        DropdownButtonHideUnderline(
                                          child: DropdownButton<String>(
                                            value: selectedGender,
                                            hint: Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                'حدد الجنس',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: 'ExpoArabic',
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            isExpanded: true,
                                            icon: Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Colors.grey,
                                            ),
                                            alignment: Alignment.centerRight,
                                            items: genders.map((String gender) {
                                              return DropdownMenuItem<String>(
                                                value: gender,
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text(
                                                    gender,
                                                    style: TextStyle(
                                                      fontFamily: 'ExpoArabic',
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                selectedGender = newValue;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      if (showErrors && selectedGender == null)
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 20,
                                            top: 5,
                                          ),
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              'الحقل مطلوب',
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
                            ),
                          ),
                          Spacer(flex: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: 'أوافق على ',
                                      style: TextStyle(
                                        fontFamily: 'ExpoArabic',
                                        fontSize: 13,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'الشروط والأحكام',
                                      style: const TextStyle(
                                        fontFamily: 'ExpoArabic',
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          print('تم الضغط');
                                        },
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 8),
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Checkbox(
                                  value: isChecked,
                                  activeColor: Colors.white,
                                  checkColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value ?? false;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          Spacer(flex: 2),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            height: 60,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: isChecked ? validateAndContinue : null,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isChecked
                                    ? Colors.black
                                    : Colors.white,
                                disabledBackgroundColor: Colors.white,
                                foregroundColor: isChecked
                                    ? Colors.white
                                    : Colors.grey,
                                disabledForegroundColor: Colors.grey,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                  side: BorderSide(
                                    color: isChecked
                                        ? Colors.black
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                              child: Text(
                                'تأكيد',
                                style: TextStyle(
                                  fontFamily: 'ExpoArabic',
                                  fontSize: 22,
                                  color: isChecked ? Colors.white : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Spacer(flex: 2),
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
