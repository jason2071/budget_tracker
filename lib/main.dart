import 'package:budget_tracker/screens/home_page.dart';
import 'package:budget_tracker/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
