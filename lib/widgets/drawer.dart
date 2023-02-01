//ignore_for_file=prefer_const_constructors
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppDrawer extends StatelessWidget {
  final _imageUrl =
      "https://scontent.fbir5-1.fna.fbcdn.net/v/t39.30808-6/321277078_559659809035790_8976178344801828449_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=uOYZZ52rYZgAX_vk_le&_nc_ht=scontent.fbir5-1.fna&oh=00_AfBs4YNuvBfo8gSr5ifTqHhLDiqizQFBmRclGJddQCHW_A&oe=63DBB17A";
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.black),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 5),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(0, 0),
                            spreadRadius: 5)
                      ]),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundImage: NetworkImage(_imageUrl),
                    radius: 100,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: UserAccountsDrawerHeader(
                        decoration: BoxDecoration(color: Colors.black),
                        accountName: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Aaryan Jha",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 29),
                            )),
                        accountEmail: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "whcloud91@gmail.com",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(FontAwesomeIcons.house, color: Colors.black),
                  title: Text("Home",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 33,
                          fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.person, color: Colors.black),
                  title: Text("My-Profile",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 29,
                          fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading:
                      Icon(FontAwesomeIcons.mobileRetro, color: Colors.black),
                  title: Text("Contact-Us",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 29,
                          fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading:
                      Icon(FontAwesomeIcons.arrowLeft, color: Colors.black),
                  title: Text("Log-Out",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 29,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
