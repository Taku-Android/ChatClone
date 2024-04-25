import 'package:flutter/material.dart';

import 'custom_option.dart';

class ChatOptions extends StatelessWidget {
  const ChatOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Divider(
          color: Colors.grey,
        ),
        CustomOption(iconData: Icons.delete, title: 'Clear conversation', onTap: () {  },),
        CustomOption(
            iconData: Icons.person_3_outlined, title: 'Upgrade to Plus', onTap: () {  },),
        CustomOption(iconData: Icons.light_mode_outlined, title: 'Light mode', onTap: () {  },),
        CustomOption(
            iconData: Icons.question_answer_outlined, title: 'Updates & FAQ', onTap: () {  },),
        CustomOption(iconData: Icons.logout, title: 'Logout', onTap: () {  },),
      ],
    );
  }
}