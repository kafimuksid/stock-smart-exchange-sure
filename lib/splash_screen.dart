import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';

import './home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      _navigateToHome();
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});

    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Opacity(
                opacity: 0.8,
                child: Container(
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage(
                          "assets/images/splashcreen stock market 1.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ), //Image.asset('assets/images/splashcreen diary 1.jpeg')
                )),
            Shimmer.fromColors(
                baseColor: Colors.orangeAccent,
                highlightColor: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Know what you own, and know why you own it.",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'ArchitectsDaughter',
                        shadows: <Shadow>[
                          Shadow(
                              blurRadius: 18.0,
                              color: Colors.white,
                              offset: Offset.fromDirection(120, 12))
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
