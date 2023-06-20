import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF178B6),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0XFFF178B6),
        title: Text('Profile'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 50),
        color: Colors.white,
        child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/profile.png'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image(
                image: AssetImage(
              ('images/name.png'),
            )),
            SizedBox(
              height: 10,
            ),
            Image(
                image: AssetImage(
              ('images/subname.png'),
            )),
            SizedBox(
              height: 10,
            ),
            Image(
                image: AssetImage(
              ('images/line.png'),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Father Name',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFFF178B6),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Querala Khan',
                  style: TextStyle(
                    color: Color(0xFF9B51E0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Phone Number',
                  style: TextStyle(
                    color: Color(0xFFF178B6),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '+92 344 651113',
                  style: TextStyle(
                    color: Color(0xFF9B51E0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Class',
                  style: TextStyle(
                    color: Color(0xFFF178B6),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '6B Red',
                  style: TextStyle(
                    color: Color(0xFF9B51E0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Address',
                  style: TextStyle(
                    color: Color(0xFFF178B6),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'House#6, Street87B, Bahria Town IV,ISB',
                  style: TextStyle(
                    color: Color(0xFF9B51E0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
