import 'package:flutter/material.dart';

import './screens/home_screen.dart';  // MyHomePage
//import './screens/home_screen_v2.dart';  // bottomBar 不同


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

