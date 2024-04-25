import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../../../utils/app_constant.dart';
import '../../../chat/presentation/screens/chat_screen.dart';

class ChatHistory extends StatefulWidget {
  const ChatHistory({Key? key});

  @override
  State<ChatHistory> createState() => _ChatHistoryState();
}

class _ChatHistoryState extends State<ChatHistory> {
  List<List<Map<String, dynamic>>> chatHistory = [];

  @override
  void initState() {
    super.initState();
    loadMessages();
  }

  Future<void> loadMessages() async {
    final box = await Hive.openBox<ChatHistory>(kHiveBox);
    final chat = box.get('chat_history');
    if (chat != null) {
      setState(() {
        chatHistory = chat as List<List<Map<String, dynamic>>> ;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: loadMessages(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error loading chat history'));
        } else {
          return (chatHistory != null && chatHistory.isNotEmpty)
              ? ListView.separated(
            itemBuilder: (context, index) {
              final chatMessages = chatHistory[index];
              final lastMessage = chatMessages.isNotEmpty ? chatMessages.last : null;
              return GestureDetector(
                onTap: () {
                  print('Chat history tapped: ${chatHistory[index]}');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ChatScreen(messages: chatMessages),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.chat_bubble_outline_rounded,
                      color: Colors.white,
                    ),
                    title: Text(
                      lastMessage?['message'].text.text[0] ?? 'No messages',
                      style: const TextStyle(color: Colors.white),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
            itemCount: chatHistory.length,
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Divider(
                  color: Colors.grey,
                ),
              );
            },
          )
              : const Center(child: Text('No chat history'));
        }
      },
    );
  }
}
