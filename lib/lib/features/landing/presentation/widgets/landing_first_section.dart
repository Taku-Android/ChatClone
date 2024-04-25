import 'package:flutter/material.dart';

import '../../../../utils/image_path.dart';
import '../../../../utils/styles.dart';

class LandingFirstSection extends StatelessWidget {
  const LandingFirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: 32,
        ),
        Image.asset(ImagePath.logo),
        const SizedBox(
          height: 24,
        ),
        Text(
          'Welcome to',
          style: Styles.titleText,
        ),
        Text(
          'ChatGPT',
          style: Styles.titleText,
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          'Ask anything, get your answer',
          style: Styles.subTitleText,
        ),
        SizedBox(
          height: size.height / 13,
        )
      ],
    );
  }
}