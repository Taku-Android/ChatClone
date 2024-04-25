import 'package:flutter/material.dart';

import '../../../../utils/styles.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.1),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0 , horizontal: 16),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Styles.subTitleText,
          ),
        ),
      ),
    );
  }
}