import 'package:flutter/material.dart';
import 'package:gradlink/homepage_screens/homepage.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Logo Image
                  Image.asset(
                    'assets/logos/logo.png', // Replace with the actual path to your logo
                    height: 300,
                    width: 300,
                  ),
                  SizedBox(height: 20),
                  // Email Text Input
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  SizedBox(height: 10),
                  // OTP Text Input
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter OTP',
                    ),
                  ),
                  SizedBox(height: 10),
                  // Password Text Input
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Set Password',
                    ),
                  ),
                  SizedBox(height: 10),
                  // LinkedIn Text Input
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'LinkedIn',
                    ),
                  ),
                  SizedBox(height: 20),
                  // Sign Up Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF861A52),
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
