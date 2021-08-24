import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotel_apps/contanta.dart';
import 'package:hotel_apps/pages/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 10);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return Home();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundprimary,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 250,
                  right: 24,
                  left: 24,
                ),
                child: Image.asset(
                  "assets/images/Logo.jpg",
                  scale: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
