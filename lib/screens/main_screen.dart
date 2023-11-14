import 'package:alumni_book/people/john_doe.dart';
import 'package:alumni_book/screens/profile_login.dart';
import 'package:flutter/material.dart';
import '../login_form.dart';
import 'recent_events.dart';
import 'package:alumni_book/people/john_doe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GradLink',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF861A52),
          title: Text(
            'GradLink',
          )),
      body: Center(
        child: LoginForm(),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GradLink'),
        actions: [
          IconButton(
            icon: Icon(Icons.person), // Profile icon
            onPressed: () {
              // Navigate to the ProfilePage
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileLogin(
                    email:
                        'john.doe@example.com', // Replace with actual user data
                    instagram:
                        'john_doe_instagram', // Replace with actual user data
                    linkedin:
                        'john_doe_linkedin', // Replace with actual user data
                  ),
                ),
              );
            },
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Recent Events'),
                value: 'RecentEvents',
              ),
            ],
            onSelected: (value) {
              if (value == 'RecentEvents') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecentEventsPage()),
                );
              }
            },
          ),
        ],
      ),
      body: CardList(),
    );
  }
}

class CardList extends StatelessWidget {
  // Example data for cards
  final List<CardData> cardData = [
    CardData(
      name: 'John Doe',
      imageUrl: 'assets/john_doe.jpg',
      linkedin: 'john_doe_linkedin',
      instagram: 'john_doe_instagram',
    ),
    CardData(
      name: 'John Doe',
      imageUrl: 'assets/simon.jpg',
      linkedin: 'john_doe_linkedin',
      instagram: 'john_doe_instagram',
    ),
    CardData(
      name: 'John Doe',
      imageUrl: 'assets/bob.jpg',
      linkedin: 'john_doe_linkedin',
      instagram: 'john_doe_instagram',
    ),
    CardData(
      name: 'John Doe',
      imageUrl: 'assets/john_doe.jpg',
      linkedin: 'john_doe_linkedin',
      instagram: 'john_doe_instagram',
    )
    // Add more card data here
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cardData.length,
      itemBuilder: (context, index) {
        return AlumniCard(cardData: cardData[index]);
      },
    );
  }
}

class CardData {
  final String name;
  final String imageUrl;
  final String linkedin;
  final String instagram;

  CardData({
    required this.name,
    required this.imageUrl,
    required this.linkedin,
    required this.instagram,
  });
}

class AlumniCard extends StatelessWidget {
  final CardData cardData;

  AlumniCard({required this.cardData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            cardData.imageUrl,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              // TODO: Navigate to the profile page
            },
            child: Text('View Profile'),
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              // TODO: Show dropdown menu
            },
            child: Text('Contact'),
          ),
        ],
      ),
    );
  }
}
