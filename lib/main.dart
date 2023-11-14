import 'screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'login_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gradlink',
      theme: ThemeData(appBarTheme: AppBarTheme(color: Color(0xFF861A52))),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GradLink')),
      body: Center(
        child: LoginForm(),
      ),
    );
  }
}
