import 'package:avril/screens/men_salon_screen/body/main_body.dart';
import 'package:avril/screens/men_salon_screen/header/header.dart';

import 'package:flutter/material.dart';

class MenSalon extends StatelessWidget {
  const MenSalon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Expanded(child: Body()),
        ],
      ),
    );
  }
}
