import 'package:flutter/material.dart';
import 'package:testttt/loginscreen.dart';
import 'package:testttt/profile.dart';
import 'package:testttt/sidepage.dart';
import 'package:testttt/signupscreen.dart';
import 'package:testttt/studentactual.dart';
import 'package:testttt/studentss.dart';
import 'reuseablecontainer.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0XFFF178B6),
        title: Text('DashBoard'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            icon: Icon(Icons.person),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => StudentMain()));
                  },
                  child: Reuseablecontainer(
                    colour: Color(0xFF57E29F),
                    image: ('images/db1.png'),
                    text: 'All Students',
                  ),
                ),
                Column(
                  children: [
                    Reuseablecontainer(
                      colour: Color(0XFFAD57E2),
                      text: 'Quiz Marks',
                      image: ('images/db2.png'),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Reuseablecontainer(
                  colour: Color(0XFFAD57E2),
                  image: ('images/db3.png'),
                  text: 'Time Table',
                ),
                Reuseablecontainer(
                  colour: Color(0XFFE2A257),
                  image: ('images/db4.png'),
                  text: 'Home Work',
                )
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Reuseablecontainer(
                    colour: Color(0XFFE257A2),
                    image: ('images/db5.png'),
                    text: 'Profile',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Reuseablecontainer(
                    colour: Color(0XFFE25757),
                    image: ('images/db6.png'),
                    text: 'Logout',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
