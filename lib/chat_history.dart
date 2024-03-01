import 'package:flutter/material.dart';

class GetChatHistory extends StatefulWidget {
  const GetChatHistory({super.key});

  @override
  State<GetChatHistory> createState() => _GetChatHistoryState();
}

class _GetChatHistoryState extends State<GetChatHistory> {
  List<Map<String, String>> chatHistory = [
    {
      "message": "message",
      "date": "month/day/year",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
