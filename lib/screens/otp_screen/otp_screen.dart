import 'package:avril/screens/complete_registration/complete_registration.dart';
import 'package:avril/widgets/logo_container.dart';
import 'package:avril/screens/otp_screen/otp_input_widget.dart';
import 'package:avril/screens/otp_screen/resend_with_timer.dart';
import 'package:avril/widgets/back_arrow.dart';
import 'package:avril/widgets/custom_button.dart';
import 'package:avril/widgets/custom_card_container.dart';
import 'package:avril/widgets/custom_card_header.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  LogoContainer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: BackArrow(),
                  ),
                ],
              ),
              Container(color: Colors.white),
            ],
          ),

          CustomCardContainer(
            children: [
              CustomCardHeader(
                headText: 'كود التفعيل',
                hintText: ' من فضلك قم بادخال الكود المرسل على جوالك',
              ),
              SizedBox(height: 20),
              OtpInputWidget(),
              SizedBox(height: 20),

              CustomButton(
                keyName: 'دخول',
                navigateFunction: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginDetails();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 10),

              ResendWithTimer(initialSeconds: 10),
            ],
          ),
        ],
      ),
    );
  }
}
