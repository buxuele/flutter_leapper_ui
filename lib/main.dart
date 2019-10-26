import 'package:flutter/material.dart';
import './screens/home_screen.dart';  // MyHomePage


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,     // pink
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

