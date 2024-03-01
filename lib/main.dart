import 'package:flutter/material.dart';
import 'package:flutter_chatapp/chat_history.dart';
import 'package:flutter_chatapp/messageAndSendButton.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            GetChatHistory(),
            MessageAndSendButton(),
          ],
        ),
      ),
    );
  }
}
