import 'package:avril/screens/otp_screen/otp_screen.dart';
import 'package:avril/widgets/custom_button.dart';
import 'package:avril/widgets/custom_card_container.dart';
import 'package:avril/widgets/custom_card_header.dart';
import 'package:avril/widgets/logo_container.dart';
import 'package:avril/screens/login_screen/phone_input_widget.dart';
import 'package:avril/screens/login_screen/visitor_login.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              LogoContainer(),
              Container(color: Colors.white, width: double.infinity),
            ],
          ),

          CustomCardContainer(
            children: [
              CustomCardHeader(
                headText: 'تسجيل دخول',
                hintText: 'مرحبا بعودتك, قم بتسجيل الدخول',
              ),
              SizedBox(height: 20),
              PhoneInputWidget(),
              SizedBox(height: 20),
              CustomButton(
                keyName: 'دخول',
                navigateFunction: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const OtpScreen()),
                  );
                },
              ),
              SizedBox(height: 20),
              VisitorLogin(),
            ],
          ),
        ],
      ),
    );
  }
}
