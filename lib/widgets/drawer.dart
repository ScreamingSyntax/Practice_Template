// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://scontent.fbir5-1.fna.fbcdn.net/v/t39.30808-6/321277078_559659809035790_8976178344801828449_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=uOYZZ52rYZgAX_vk_le&_nc_ht=scontent.fbir5-1.fna&oh=00_AfBs4YNuvBfo8gSr5ifTqHhLDiqizQFBmRclGJddQCHW_A&oe=63DBB17A";
    return Drawer(
      child: Container(
        color: Colors.amber[100],
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green[100]),
                accountName: Text("Aaryan Jha"),
                accountEmail: Text("whcloud91@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 15),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
                size: 25,
              ),
              title: Text(
                "My Profile",
                style: TextStyle(
                  fontSize: 15,
                ),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              title: Text(
                "Email Me",
                style: TextStyle(
                  fontSize: 15,
                ),
                textScaleFactor: 1.2,
              ),
              leading: Icon(
                Icons.email_rounded,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
