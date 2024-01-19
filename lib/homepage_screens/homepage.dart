import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'batch_screens/batch23.dart';
import 'batch_screens/batch24.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
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
      body: Center(
        child: Text('This is the Home Page'),
      ),
    );
  }
}
