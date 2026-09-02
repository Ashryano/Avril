import 'package:avril/screens/complete_registration/accept_terms_conditions.dart';
import 'package:avril/screens/home_screen/home_screen/home_screen.dart';
import 'package:avril/widgets/custom_card_container.dart';
import 'package:avril/widgets/custom_card_header.dart';
import 'package:avril/widgets/logo_container.dart';
import 'package:avril/widgets/optional_input_widget.dart';
import 'package:avril/widgets/required_dropdown_widget.dart';
import 'package:avril/widgets/required_input_widget.dart';
import 'package:flutter/material.dart';

class LoginDetails extends StatefulWidget {
  const LoginDetails({super.key});

  @override
  State<LoginDetails> createState() => _LoginDetailsState();
}

class _LoginDetailsState extends State<LoginDetails> {
  bool isChecked = false;
  bool showErrors = false;

  final usernameController = TextEditingController();
  String? selectedCity;
  String? selectedGender;

  @override
  void dispose() {
    usernameController.dispose();
    super.dispose();
  }

  void validateAndContinue() {
    setState(() {
      showErrors = true;
    });

    if (usernameController.text.trim().isEmpty ||
        selectedCity == null ||
        selectedGender == null) {
      print('يرجى ملء جميع الحقول المطلوبة');
      return;
    }

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              LogoContainer(),
              Container(color: Colors.white),
            ],
          ),
          CustomCardContainer(
            children: [
              CustomCardHeader(
                headText: 'استكمال البيانات',
                hintText: 'قم باستكمال البيانات الخاصة بك',
              ),
              const SizedBox(height: 16),
              RequiredInputWidget(
                controller: usernameController,
                containerAddress: 'اسم المستخدم',
                containerHint: 'ادخل اسم المستخدم',
                hasError: showErrors && usernameController.text.trim().isEmpty,
              ),
              const SizedBox(height: 10),
              OptionalInputWidget(
                containerAdress: 'البريد الالكترونى',
                containerHint: 'ادخل البريد الالكترونى',
                containerAdressHint: '(اختياري)',
              ),
              const SizedBox(height: 10),
              RequiredDropdownWidget(
                dropDown: const [
                  'دمياط',
                  'القاهرة',
                  'اسوان',
                  'الغردقة',
                  'مطروح',
                ],
                containerAddress: ' اسم المدينة',
                containerHint: ' حدد اسم المدينة',
                selectedValue: selectedCity,
                onChanged: (value) {
                  setState(() {
                    selectedCity = value;
                  });
                },
                hasError: showErrors && selectedCity == null,
              ),
              const SizedBox(height: 10),
              RequiredDropdownWidget(
                dropDown: const ['ذكر', 'انثي'],
                containerAddress: 'الجنس',
                containerHint: ' حدد الجنس',
                selectedValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value;
                  });
                },
                hasError: showErrors && selectedGender == null,
              ),
              AcceptTermsandconditions(
                isChecked: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value ?? false;
                  });
                },
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: isChecked ? validateAndContinue : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isChecked ? Colors.black : Colors.white,
                    disabledBackgroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                      side: BorderSide(color: Colors.black, width: 1),
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
            ],
          ),
        ],
      ),
    );
  }
}
