import 'package:flutter/material.dart';
import 'package:testttt/studentss.dart';

class StudentMain extends StatelessWidget {
  const StudentMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0XFFF178B6),
        title: Text('Students'),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Name',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0XFFF178B6),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Text(
                        'Class',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0XFFF178B6),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Students(),
        ],
      ),
    );
  }
}
