import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 1), () => Navigator.pushNamed(context, "/home"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 40.0),
                      ),
                      Text(
                        "Binary Pad",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontFamily: "ComicNeue",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "use for basic calculation only",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "ComicNeue",
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Text(
                  "Version 1.0",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "ComicNeue",
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "made with love by @blackdevil.co",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "ComicNeue",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ))
          ])
        ],
      ),
    );
  }
}
