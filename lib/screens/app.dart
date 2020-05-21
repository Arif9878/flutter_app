import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constants.dart';
import 'package:flutter_app/utils/Navigation.dart';
import 'package:flutter_app/configs/Routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      initialRoute: splashScreen,
      onGenerateRoute: Routes().onGenerateRoute,
      theme: ThemeData(
        primaryColor: Color(0xFFF06038),
      ),
    );
  }
}
