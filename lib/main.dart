import 'package:flutter/material.dart';
import 'package:flutter_chatapp/list_chat_history.dart';
import 'package:flutter_chatapp/messageAndSendButton.dart';
import 'package:flutter_chatapp/provider/chat_history_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
          body: ChangeNotifierProvider(
        create: (context) => ChatHistoryProvider(),
        child: Column(
          children: [const ListChatHistory(), MessageAndSendButton()],
        ),
      )),
    );
  }
}
