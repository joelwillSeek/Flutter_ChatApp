import 'package:flutter/material.dart';

class ChatHistoryProvider extends ChangeNotifier {
  List<Map<String, String>> chatHistory = [
    {
      "message": "message",
      "date": "month/day/year",
    }
  ];

  void addChatHistory(String message, String date) {
    chatHistory.add({
      "message": message,
      "date": date,
    });
    notifyListeners();
  }

  String getChatIndexMessage(int index) =>
      chatHistory[index]["message"].toString();

  String getChatIndexDate(int index) => chatHistory[index]["date"].toString();
}
