import 'package:flutter/material.dart';
//import 'package:flutter_app/screens/Login/LoginScreen.dart';
import 'package:flutter_app/screens/Home/HomeScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFF06038),
      ),
      home: HomeScreen(),
    );
  }
}
