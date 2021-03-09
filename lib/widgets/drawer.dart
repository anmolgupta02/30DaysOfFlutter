import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        color: Colors.cyan,
        child: ListView(
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.cyan),
                accountName: Text("Anmol Gupta"),
                accountEmail: Text(
                  "anmolgupta02@gmail.com",
                ),
                margin: EdgeInsets.zero,
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/25704765?s=460&v=4"
                  ),
                ),
              ),
              padding: EdgeInsets.zero,
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white,),
              title: Text("Home", textScaleFactor: 1.2, style: TextStyle(color: Colors.white),),
            ), ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
              title: Text("Profile", textScaleFactor: 1.2, style: TextStyle(color: Colors.white),),
            ), ListTile(
              leading: Icon(Icons.email, color: Colors.white,),
              title: Text("Contact Us", textScaleFactor: 1.2, style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
