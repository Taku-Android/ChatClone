import 'package:flutter/material.dart';

import '../../../../utils/image_path.dart';
import '../../../../utils/styles.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.keyboard_arrow_left_rounded,
              color: Colors.white,
            ),
          ),
          title: Text(
            'Back',
            style: Styles.subTitleText,
          ),
          trailing: Image.asset(ImagePath.logo),
        ),
        const Divider(
          color: Colors.grey,
        ),
      ],
    );
  }
}