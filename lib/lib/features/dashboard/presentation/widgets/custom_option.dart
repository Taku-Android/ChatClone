import 'package:flutter/material.dart';

import '../../../../utils/styles.dart';

class CustomOption extends StatelessWidget {
  const CustomOption(
      {super.key,
        required this.iconData,
        required this.title,
        this.color = Colors.white, required this.onTap});

  final IconData iconData;

  final String title;

  final Color? color;
  final  Function()? onTap ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: ListTile(
          leading: Icon(
            iconData,
            color: color,
          ),
          title: Text(
            title,
            style: Styles.subTitleText.copyWith(color: color),
          ),
          trailing: (iconData == Icons.person_3_outlined) ? newWidget() : null,
        ),
      ),
    );
  }

  Widget newWidget() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.yellow.withOpacity(.9), borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          'NEW',
          style: Styles.subTitleText.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}