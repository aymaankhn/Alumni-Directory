import 'package:flutter/material.dart';
import 'package:gradlink/homepage_screens/profilepage_screens/profile_page.dart';
import 'batch_screens/batch23.dart';
import 'batch_screens/batch24.dart';
import 'package:gradlink/homepage_screens/footer_screens/footer.dart';
import 'footer_screens/calendar.dart';
import 'footer_screens/group_chat.dart';
import 'footer_screens/jobs_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Define a list of image paths
  List<String> imagePaths = [
    'assets/eveimg/1.jpg',
    'assets/eveimg/2.jpg',
    'assets/eveimg/3.jpg',
    'assets/eveimg/4.jpg',
    'assets/eveimg/5.jpg'
  ];

  int currentIndex = 0; // Current index of the displayed image

  void goToPreviousImage() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
    }
  }

  void goToNextImage() {
    if (currentIndex < imagePaths.length - 1) {
      setState(() {
        currentIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.account_circle), // Profile Button Icon
          onPressed: () {
            // Redirect to profile page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        ),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: ListTile(
                    title: Text('Batch 23'),
                    onTap: () {
                      Navigator.pop(context); // Close the menu
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Batch23Page()),
                      );
                    },
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    title: Text('Batch 24'),
                    onTap: () {
                      Navigator.pop(context); // Close the menu
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Batch24Page()),
                      );
                    },
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Card(
              margin: EdgeInsets.all(20), // Adjust margin as needed
              color: Color(0xFF861A52), // Set the card background color
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Events',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            imagePaths[currentIndex],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Ajeenkya DY Patil University in collaboration with Sunburn festival & Red Bull organized one of the biggest music event in the campus. Attracting more than 1000 people from different colleges and universities participated in the festival.', // Your caption text
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          bottom: 0,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: goToPreviousImage,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          bottom: 0,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                            onPressed: goToNextImage,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Theme.of(context).appBarTheme.backgroundColor,
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FooterButton(
                  label: 'Jobs',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => JobsPage()),
                    );
                  },
                ),
                FooterButton(
                  label: 'Group Chat',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GroupChatPage()),
                    );
                  },
                ),
                FooterButton(
                  label: 'Calendar',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CalendarPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
