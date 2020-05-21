import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Navigation.dart';
import 'package:flutter_app/widgets/SplashScreen.dart';
import 'package:flutter_app/screens/Main/MainScreen.dart';
import 'package:flutter_app/screens/Home/HomeScreen.dart';
import 'package:flutter_app/screens/News/NewsScreen.dart';
import 'package:flutter_app/screens/Profile/ProfileScreen.dart';

class Routes {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => SplashPage());
        break;
      case mainScreen:
        return MaterialPageRoute(builder: (_) => MainScreen());
        break;
      case homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
        break;
      case newsScreen:
        return MaterialPageRoute(builder: (_) => NewsScreen());
        break;
      case profileScreen:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('404 | Not Found'),
            ),
          ),
        );
    }
  }
}
