import 'package:ecology_app/pages/intro.dart';
import 'package:ecology_app/pages/login.dart';
import 'package:ecology_app/pages/register.dart';
import 'package:ecology_app/pages/splashScreen.dart';
import 'package:ecology_app/widget/drawerMenu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecology App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff2e7d32),
        accentColor: Color(0xff60ad5e),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/intro': (context) => Intro(),
        '/register': (context) => Register(),
        '/login': (context) => Login(),
        '/drawer': (context) => DrawerMenu(),
      },
    );
  }
}
