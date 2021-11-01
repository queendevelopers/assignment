import 'package:flutter/material.dart';
import 'package:swivt/src/main/modules/homepage/homepage_view.dart';
import 'package:swivt/src/main/ui/screens/splash_screen.dart';

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
