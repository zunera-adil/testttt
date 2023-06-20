import 'package:flutter/material.dart';
import 'package:testttt/loginscreen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Image(
                image: AssetImage(
              ('images/welcome.png'),
            )),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Welcome',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Welcome to my School System we build the future of your child here',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12),
          ),
          SizedBox(
            height: 100,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: 300,
              height: 40,
              color: Color(0XFFF178B6),
              child: Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 13),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
