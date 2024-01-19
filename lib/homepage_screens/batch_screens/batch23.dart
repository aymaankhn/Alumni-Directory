import 'package:flutter/material.dart';
import '../../constants/profile_button.dart';

class Batch23Page extends StatefulWidget {
  @override
  _Batch23PageState createState() => _Batch23PageState();
}

class _Batch23PageState extends State<Batch23Page> {
  List<String> profileNames = [
    'John',
    'Jane',
    'Bob',
    'Alice',
    'Charlie',
    'Diana',
  ];

  String searchText = '';

  @override
  Widget build(BuildContext context) {
    List<String> filteredNames = profileNames
        .where((name) => name.toLowerCase().contains(searchText.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Batch 23 Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[200],
              ),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchText = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemCount: filteredNames.length,
              itemBuilder: (context, index) {
                return ProfileButton(
                  imageUrl: 'assets/propic/propic$index.jpg',
                  aliasName: filteredNames[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
