import 'package:flutter/material.dart';

class ProfileLogin extends StatelessWidget {
  final String email;
  final String instagram;
  final String linkedin;

  ProfileLogin({
    required this.email,
    required this.instagram,
    required this.linkedin,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Email: $email'),
            Text('Instagram: $instagram'),
            Text('LinkedIn: $linkedin'),
          ],
        ),
      ),
    );
  }
}
