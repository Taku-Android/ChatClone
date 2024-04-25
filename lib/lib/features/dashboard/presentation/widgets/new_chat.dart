import 'package:flutter/material.dart';

import '../../../../utils/styles.dart';
import '../../../chat/presentation/screens/chat_screen.dart';

class NewChat extends StatelessWidget {
  const NewChat({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const ChatScreen(messages: [],),
          ),
        );
      },
      child: ListTile(
        leading: const Icon(
          Icons.chat_bubble_outline,
          color: Colors.white,
        ),
        title: Text(
          'New Chat',
          style: Styles.normalText,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
          size: 18,
        ),
      ),
    );
  }
}
