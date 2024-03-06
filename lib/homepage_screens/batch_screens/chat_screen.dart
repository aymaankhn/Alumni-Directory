import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String studentName;

  const ChatScreen({Key? key, required this.studentName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with $studentName'),
      ),
      body: Center(
        child: Text('Chat with $studentName'), // Replace with chat UI
      ),
    );
  }
}
