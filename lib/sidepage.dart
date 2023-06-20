import 'package:flutter/material.dart';
import 'package:testttt/profile.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(30), bottom: Radius.circular(30))),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('images/profile.png'),
            ),
            decoration: BoxDecoration(
              color: Color(0xFFF178B6),
            ),
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Your Profile'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()))
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
