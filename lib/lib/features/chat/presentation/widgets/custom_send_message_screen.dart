import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/styles.dart';

class CustomMessagesScreen extends StatefulWidget {
  const CustomMessagesScreen({super.key, required this.messages});

  final List<Map<String, dynamic>> messages;

  @override
  State<CustomMessagesScreen> createState() => _CustomMessagesScreenState();
}

class _CustomMessagesScreenState extends State<CustomMessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: (widget.messages[index]["isUserMessage"])
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: (widget.messages[index]["isUserMessage"])
                      ? AppColor.buttonColor
                      : Colors.white.withOpacity(.3),
                  borderRadius: BorderRadius.only(
                    topRight: const Radius.circular(12),
                    topLeft: const Radius.circular(12),
                    bottomRight: (widget.messages[index]["isUserMessage"])
                        ? const Radius.circular(0)
                        : const Radius.circular(12),
                    bottomLeft: (widget.messages[index]["isUserMessage"])
                        ? const Radius.circular(12)
                        : const Radius.circular(0),
                  ),
                ),
                child: Text(
                  widget.messages[index]["message"].text.text[0],
                  style: Styles.subTitleText,
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 8,
          );
        },
        itemCount: widget.messages.length);
  }
}