import 'package:flutter/material.dart';
import 'package:flutter_app/screens/app.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(App());
  } catch (error, stacktrace) {
    print('$error & $stacktrace');
  }
}
