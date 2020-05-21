import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/Constants.dart';
import 'package:flutter_app/utils/Navigation.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
          () => Navigator.of(context).pushNamed(mainScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kDeepBlueColor, kPurpleColor, kPinkColor],
            begin: Alignment(-1.0, -1.0),
            end: Alignment(1.0, 1.0),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'ISENG',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.display1.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'AJA',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.display1.copyWith(
                      color: kTxtPinkColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                'Indonesia\nCOVID-19',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline.copyWith(
                  color: kWhiteColor,
                  height: 1.5,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
