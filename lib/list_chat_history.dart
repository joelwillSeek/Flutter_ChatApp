import 'package:flutter/material.dart';
import 'package:flutter_chatapp/provider/chat_history_provider.dart';
import 'package:provider/provider.dart';

class ListChatHistory extends StatelessWidget {
  const ListChatHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: ListView.builder(
        itemCount: context.watch<ChatHistoryProvider>().chatHistory.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(children: [
              Text(context
                  .watch<ChatHistoryProvider>()
                  .getChatIndexMessage(index)),
              Text(
                  context.watch<ChatHistoryProvider>().getChatIndexDate(index)),
            ]),
          );
        },
      ),
    );
  }
}
