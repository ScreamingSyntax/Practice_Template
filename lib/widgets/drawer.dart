//ignore_for_file:prefer_const_constructor, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAppDrawer extends StatelessWidget {
  final _imageUrl =
      "https://scontent.fbir5-1.fna.fbcdn.net/v/t39.30808-6/321277078_559659809035790_8976178344801828449_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=uOYZZ52rYZgAX_vk_le&_nc_ht=scontent.fbir5-1.fna&oh=00_AfBs4YNuvBfo8gSr5ifTqHhLDiqizQFBmRclGJddQCHW_A&oe=63DBB17A";
  MyAppDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 5),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(_imageUrl),
                radius: 100,
              ),
            ),
            Container(
              height: 140,
              child: Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    accountName: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Aaryan Jha",
                          style: TextStyle(color: Colors.black, fontSize: 28),
                        )),
                    accountEmail: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "whcloud91@gmail.com",
                          style: TextStyle(color: Colors.black, fontSize: 23),
                        ))),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.house_fill,
                color: Colors.black,
              ),
              title: Text("Home", style: TextStyle(fontSize: 23)),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text("Contact-Us", style: TextStyle(fontSize: 23)),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text("My-Profile", style: TextStyle(fontSize: 23)),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.arrow_left_circle,
                color: Colors.black,
              ),
              title: Text(
                "Log-Out",
                style: TextStyle(fontSize: 23),
              ),
            )
          ],
        ),
      ),
    );
  }
}
