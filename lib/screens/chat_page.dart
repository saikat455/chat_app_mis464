import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Page'),
      ),
      body: ListView(
        children: [
          ChatBubble(
            message: 'Hello there!',
            isSentByMe: true,
          ),
          ChatBubble(
            message: 'Hi! How are you?',
            isSentByMe: false,
          ),
          ChatBubble(
            message: 'Fine. What about u?',
            isSentByMe: true,
          ),
          ChatBubble(
            message: 'Well. Btw how is your project going?',
            isSentByMe: false,
          ),
          ChatBubble(
            message: 'Ummm having issues with firebase!',
            isSentByMe: true,
          ),
          // Add more chat bubbles as needed
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSentByMe;

  ChatBubble({required this.message, required this.isSentByMe});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment:
            isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isSentByMe ? Colors.blue : Colors.grey[300],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              message,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
