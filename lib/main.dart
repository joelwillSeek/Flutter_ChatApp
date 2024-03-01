import 'package:flutter/material.dart';
import 'package:flutter_chatapp/messageAndSendButton.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final List<Map<String, String>> chatHistory = [
    {
      "message": "message",
      "date": "month/day/year",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: ListView.builder(
                itemCount: chatHistory.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(children: [
                      Text(chatHistory[index]["message"].toString()),
                      Text(chatHistory[index]["date"].toString()),
                    ]),
                  );
                },
              ),
            ),
            const MessageAndSendButton()
          ],
        ),
      ),
    );
  }
}
