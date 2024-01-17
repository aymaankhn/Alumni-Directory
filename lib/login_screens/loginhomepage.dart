import 'package:flutter/material.dart';
import 'package:gradlink/login_screens/loginpage.dart';
import 'package:gradlink/login_screens/signuppage.dart';
import 'package:gradlink/login_screens/contactuspage.dart';

class LoginHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gradlink',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // College Logo
                Image.asset(
                  'assets/logos/logo.png', // Replace with the actual path to your logo
                  height: 300,
                  width: 300,
                ),
                SizedBox(height: 10), // Reduce spacing
                // Login Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF861A52),
                  ),
                  child: Container(
                    width: 150,
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Sign Up Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF861A52),
                  ),
                  child: Container(
                    width: 150,
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Contact Us Button
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactPage()),
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xFF861A52),
                  ),
                  child: Text('Contact Us'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
