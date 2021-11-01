import 'package:flutter/material.dart';
import 'package:swivt/app/demo_app.dart';
import 'package:swivt/app/locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(DemoApp());
}
