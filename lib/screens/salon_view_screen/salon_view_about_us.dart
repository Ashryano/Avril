import 'package:avril/screens/men_salon_screen/body/favorite_button.dart';
import 'package:avril/widgets/back_arrow.dart';
import 'package:flutter/material.dart';

class SalonViewAboutUs extends StatelessWidget {
  final String providerId;
  final String providerName;

  const SalonViewAboutUs({
    super.key,
    required this.providerId,
    this.providerName = 'تفاصيل الصالون',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(2),
            padding: const EdgeInsets.only(top: 70),
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: const AssetImage('assets/salon_view.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BackArrow(),
                    Text(
                      providerName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ExpoArabic',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 4.0,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                    FavoriteButton(providerId: providerId),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
