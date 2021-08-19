import 'package:flutter/material.dart';
import 'package:testappnumbertwo/pages/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final themeData = ThemeData(
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
        headline3: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold)),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: HomeView(),
    );
  }
}
