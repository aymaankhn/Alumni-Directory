import 'package:alumni_book/screens/main_screen.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _instagramController = TextEditingController();
  final TextEditingController _linkedinController = TextEditingController();

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;
    String instagram = _instagramController.text;
    String linkedin = _linkedinController.text;

    // TODO: Implement your authentication and linking logic here
    // For now, let's just print the entered data
    print('Email: $email\nPassword: $password');
    print('Instagram: $instagram\nLinkedIn: $linkedin');

    // Navigate to the MainScreen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/logo.png')),
                SizedBox(height: 16),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: _instagramController,
                  decoration: InputDecoration(
                    labelText: 'Instagram',
                    prefixIcon: Icon(Icons.link),
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: _linkedinController,
                  decoration: InputDecoration(
                    labelText: 'LinkedIn',
                    prefixIcon: Icon(Icons.link),
                  ),
                ),
                SizedBox(height: 32.0),
                ElevatedButton(
                  onPressed: _login,
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
