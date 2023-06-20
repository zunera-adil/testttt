import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testttt/welcomepage.dart';
import '';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => WelcomePage())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              image: AssetImage(
            ('images/Education.png'),
          )),
          Text(
            'Nexttier School',
            style: TextStyle(
                color: Color(0xFF9B51E0),
                fontWeight: FontWeight.w700,
                fontSize: 32),
          )
        ],
      )),
    );
  }
}
