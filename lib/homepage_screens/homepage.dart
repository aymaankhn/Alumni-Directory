import 'package:flutter/material.dart';
import 'package:gradlink/homepage_screens/profile_button/profile_button.dart';
import 'package:gradlink/homepage_screens/events_page/events_page.dart'; // Import the EventsPage or adjust based on your project structure

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alumni Profiles'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: ListTile(
                    title: Text('Events'),
                    onTap: () {
                      Navigator.pop(context); // Close the menu
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EventsPage()),
                      );
                    },
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 4.0,
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ProfileButton(
                      imageUrl: 'assets/propic/propic$index.jpg');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
