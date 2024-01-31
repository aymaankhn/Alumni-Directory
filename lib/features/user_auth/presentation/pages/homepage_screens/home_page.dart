import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'batch_screens/batch23.dart';
import 'batch_screens/batch24.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page', style: TextStyle(color: Colors.white)),
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

  Stream<List<UserModel>> _readData(){
    final userCollection = FirebaseFirestore.instance.collection("users");

    return userCollection.snapshots().map((qureySnapshot)
    => qureySnapshot.docs.map((e)
    => UserModel.fromSnapshot(e),).toList());
  }

  void _createData(UserModel userModel) {
    final userCollection = FirebaseFirestore.instance.collection("users");

    String id = userCollection.doc().id;

    final newUser = UserModel(
      username: userModel.username,
      age: userModel.age,
      adress: userModel.adress,
        id: id,
    ).toJson();

    userCollection.doc(id).set(newUser);
  }

  void _updateData(UserModel userModel) {
    final userCollection = FirebaseFirestore.instance.collection("users");

    final newData = UserModel(
      username: userModel.username,
      id: userModel.id,
      adress: userModel.adress,
      age: userModel.age,
    ).toJson();

    userCollection.doc(userModel.id).update(newData);

  }

  void _deleteData(String id) {
    final userCollection = FirebaseFirestore.instance.collection("users");

    userCollection.doc(id).delete();

  }



class UserModel{
  final String? username;
  final String? adress;
  final int? age;
  final String? id;

  UserModel({this.id,this.username, this.adress, this.age});


  static UserModel fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot){
    return UserModel(
      username: snapshot['username'],
      adress: snapshot['adress'],
      age: snapshot['age'],
      id: snapshot['id'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      "username": username,
      "age": age,
      "id": id,
      "adress": adress,
    };
  }
}
