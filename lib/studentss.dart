import 'package:flutter/material.dart';

class Students extends StatelessWidget {
  final titles = ["Zubaida", "Zain Ali", "Bisma Riaz"];
  final clas = ["8th", "10th", "6th"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      color: Colors.red,
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Card(
                color: Color(0xFF9B51E0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTile(
                      title: Text(
                        titles[index],
                      ),
                    ),
                    // SizedBox(
                    //   width: 30,
                    // ),
                    // ListTile(
                    //   title: Text(
                    //     clas[index],
                    //   ),
                    // ),
                  ],
                ));
          }),
    );
  }
}
