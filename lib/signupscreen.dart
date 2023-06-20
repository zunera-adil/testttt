import 'package:flutter/material.dart';
import 'package:gender_picker/gender_picker.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:testttt/loginscreen.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
                    ('images/signuptext.png'),
                  )),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFEEEEEE),
                        border: InputBorder.none,
                        hintText: 'Enter your full name',
                      ),
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
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
                Container(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFEEEEEE),
                        border: InputBorder.none,
                        hintText: 'Confirm Password',
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Color(0XFFF178B6),
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Select Gender',
                      style: TextStyle(
                          color: Color(0xFF9B51E0),
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                ),
                getWidget(false, true),
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
                        'Sign Up',
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
                        MaterialPageRoute(builder: (context) => LoginScreen()));
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

  Widget getWidget(bool showOtherGender, bool alignVertical) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      alignment: Alignment.center,
      child: GenderPickerWithImage(
        showOtherGender: showOtherGender,
        verticalAlignedText: alignVertical,

        // to show what's selected on app opens, but by default it's Male
        selectedGender: Gender.Male,
        selectedGenderTextStyle:
            TextStyle(color: Color(0xFF8b32a8), fontWeight: FontWeight.bold),
        unSelectedGenderTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        onChanged: (Gender? gender) {
          print(gender);
        },
        //Alignment between icons
        equallyAligned: true,

        animationDuration: Duration(milliseconds: 300),
        isCircular: true,
        // default : true,
        opacityOfGradient: 0.4,
        padding: const EdgeInsets.all(3),
        size: 50, //default : 40
      ),
    );
  }
}
