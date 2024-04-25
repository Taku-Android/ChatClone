import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../../../utils/app_constant.dart';
import '../../../dashboard/chat/chat_history.dart';
import 'customAppbar.dart';
import 'custom_send_message_screen.dart';
import 'custom_text_field.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({Key? key, required this.chatHistory}) : super(key: key);
  final List<Map<String, dynamic>> chatHistory;

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  TextEditingController chatController = TextEditingController();
  late DialogFlowtter dialogFlowtter;
  late List<Map<String, dynamic>> messages;

  @override
  void initState() {
    super.initState();
    initializeDialogFlowtter();
    messages = List<Map<String, dynamic>>.from(widget.chatHistory);
  }

  Future<void> initializeDialogFlowtter() async {
    dialogFlowtter = await DialogFlowtter.fromFile();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbar(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomMessagesScreen(messages: messages),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: CustomTextField(
            controller: chatController,
            onPressed: () {
              sendMessage(chatController.text);
              chatController.clear();
            },
          ),
        )
      ],
    );
  }

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) {
      print("Message is Empty");
      return;
    }

    final newMessage = {
      "message": Message(text: DialogText(text: [text])),
      "isUserMessage": true,
    };
    addMessage(newMessage);

    final response = await dialogFlowtter.detectIntent(
      queryInput: QueryInput(text: TextInput(text: text)),
    );

    if (response.message != null) {
      final botMessage = {"message": response.message!, "isUserMessage": false};
      addMessage(botMessage);
    }

    saveMessages(messages);
  }

  Future<void> saveMessages(List<Map<String, dynamic>> messages) async {
    final box = await Hive.openBox<ChatHistory>(kHiveBox);
    final chat = ChatHistory([messages]);
    await box.put('chat_history', chat);
  }

  void addMessage(Map<String, dynamic> message) {
    setState(() {
      messages.add(message);
    });
  }
}
