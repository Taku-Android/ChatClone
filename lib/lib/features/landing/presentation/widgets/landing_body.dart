import 'package:flutter/material.dart';

import 'landing_first_section.dart';
import 'landing_second_section.dart';

class LandingBody extends StatelessWidget {
  const LandingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Center(
        child: Column(
          children: [
            LandingFirstSection(),
            LandingSecondSection(),
          ],
        ),
      ),
    );
  }
}