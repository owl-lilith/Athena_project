// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:athena/components/transitions.dart';
import 'package:athena/screens/guide1_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static String id = "welcome_screen";

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Text(
              "Welcome!",
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
                  Navigator.of(context).push(slideTransitionTo(Guide1Screen()));
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
