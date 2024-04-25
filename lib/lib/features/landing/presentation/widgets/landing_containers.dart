import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';

class LandingContainers extends StatelessWidget {
  const LandingContainers({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 1,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: index == 0 ? AppColor.buttonColor : Colors.grey,
            borderRadius:
            BorderRadius.circular(2), // Gives a rounded appearance
          ),
        ),
        Container(
          width: 50,
          height: 1,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: index == 1 ? AppColor.buttonColor : Colors.grey,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        Container(
          width: 50,
          height: 1,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: index == 2 ? AppColor.buttonColor : Colors.grey,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }
}