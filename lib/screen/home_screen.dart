import 'package:flutter/material.dart';
import 'package:fruit_app_flutter/screen/login_page.dart';
import 'package:fruit_app_flutter/widget/categories.dart';
import 'package:fruit_app_flutter/widget/new_items.dart';

import 'profile_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(6),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('lib/image/Rafif.jpg'),
                backgroundColor: Colors.black,
                radius: 50,
              ),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              "All Fruits",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
          ),
          Categories(),
          NewItems()
        ],
      ),
    );
  }
}