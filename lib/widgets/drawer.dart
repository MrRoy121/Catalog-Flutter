import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                    child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    accountName: Text("Name"),
                    accountEmail: Text("exaple@emaple.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("assets/image/user.jpg"),
                    ),
                  ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text("Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: Text("Settings",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text("Email Me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
