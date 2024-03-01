import 'package:flutter/material.dart';

class MessageAndSendButton extends StatelessWidget {
  const MessageAndSendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 4,
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(hintText: "Enter message"),
          ),
        ),
        Expanded(
          flex: 1,
          child: FloatingActionButton(
            shape: CircleBorder(),
            onPressed: null,
            child: Icon(Icons.send),
          ),
        ),
      ],
    ));
  }
}
