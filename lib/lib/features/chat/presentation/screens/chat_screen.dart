import 'package:flutter/material.dart';
import '../widgets/chat_body.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.messages});

  final List<Map<String, dynamic>> messages;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ChatBody(chatHistory: messages,),
      ),
    );
  }
}






