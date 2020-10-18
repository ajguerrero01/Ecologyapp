import 'dart:async';

import 'package:ecology_app/pages/intro.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Intro())));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/imagen/logo.jpg',
                height: 300.0,
                width: 300.0,
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.amber,
            ),
            SizedBox(height: 10.0),
            Text('Cargando')
          ],
        ),
      ),
    );
  }
}
