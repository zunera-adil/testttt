import 'package:flutter/material.dart';
import 'dashboard.dart';

class Reuseablecontainer extends StatelessWidget {
  Reuseablecontainer({
    required this.colour,
    required this.image,
    required this.text,
  });
  String image;
  Color? colour;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
