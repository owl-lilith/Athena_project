// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Guide3Screen extends StatefulWidget {
  const Guide3Screen({Key? key}) : super(key: key);
  static String id = "guide3_screen";

  @override
  _Guide3ScreenState createState() => _Guide3ScreenState();
}

class _Guide3ScreenState extends State<Guide3Screen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Text(
              "Guide 3",
              style: TextStyle(fontSize: 55),
            ),
          ),
          Positioned(
            left: mediaQuery.size.width * 0.5 - 25,
            top: mediaQuery.size.height * 0.88,
            child: Hero(
              tag: "next",
              child: IconButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    CircleBorder(
                      side: BorderSide(width: 2),
                    ),
                  ),
                ),
                onPressed: () {
                  // Potentially navigating to the login screen
                },
                icon: Icon(
                  Icons.arrow_forward_outlined,
                  size: 35,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
