import 'package:flutter/material.dart';
import 'package:testttt/dashboard.dart';
import 'package:testttt/signupscreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Image(
                      image: AssetImage(
                    ('images/logintext.png'),
                  )),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    padding: const EdgeInsets.all(30),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFEEEEEE),
                        border: InputBorder.none,
                        hintText: 'Enter your Email',
                      ),
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFEEEEEE),
                        border: InputBorder.none,
                        hintText: 'Enter your Password',
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Color(0XFFF178B6),
                        ),
                      ),
                    )),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget Password?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color(0xFF9B51E0),
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DashBoard()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    width: 300,
                    height: 40,
                    color: Color(0XFFF178B6),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                  child: Text(
                    'Already have an account? SignIn',
                    style: TextStyle(
                        color: Color(0xFF9B51E0),
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                )
              ])),
        ));
  }
}
