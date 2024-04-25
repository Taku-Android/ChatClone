import 'package:flutter/material.dart';

import 'chat_history.dart';
import 'chat_option.dart';
import 'new_chat.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: NewChat(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Expanded(child: ChatHistory()),
          Expanded(child: ChatOptions()),
        ],
      ),
    );
  }
}