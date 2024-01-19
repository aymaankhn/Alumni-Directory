import 'package:flutter/material.dart';
import 'package:gradlink/login_screens/loginhomepage.dart';

void main() {
  runApp(GradlinkApp());
}

class GradlinkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gradlink',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xFF861A52)),
      ),
      home: LoginHomePage(),
    );
  }
}
