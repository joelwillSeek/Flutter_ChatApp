import 'package:flutter/material.dart';
import 'package:flutter_chatapp/provider/chat_history_provider.dart';
import 'package:provider/provider.dart';

class MessageAndSendButton extends StatelessWidget {
  MessageAndSendButton({super.key});

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 4,
          child: TextField(
            controller: textEditingController,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: "Enter message"),
          ),
        ),
        Expanded(
          flex: 1,
          child: FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: () {
              String message = textEditingController.text;
              DateTime now = DateTime.now();
              String date = "${now.month}/${now.day}/${now.year}";
              context.read<ChatHistoryProvider>().addChatHistory(message, date);
              textEditingController.clear();
            },
            child: const Icon(Icons.send),
          ),
        ),
      ],
    ));
  }
}
