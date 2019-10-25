import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './search_box.dart';   // SearchBox
import './topic_box.dart';    // TopicBox
import './content_box.dart';  // ContentBox
import './bottom_box.dart';   // BottomBox



class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    _controller = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,   // white70

      body: ListView(
        children: <Widget>[
          SearchBox(),
          TopicBox(),
          ContentBox(),

//          BottomBox(),
        ],
      ),

      // bottomBar 这里有2中写法：
      // 一种是按照scaffold里面内定的，
      // 还一种是自定义， 用 positioned(),这个更贴近原图。。。


//     bottomNavigationBar: BottomBox(),



     bottomNavigationBar: BottomAppBar(   // failed!!!
       shape: CircularNotchedRectangle(),
       color: Colors.pinkAccent,
       child: TabBar(
         tabs: <Widget>[
           Tab(icon: Icon(Icons.home, color: Colors.white, size: 35.0),),
           Tab(icon: Icon(Icons.home, color: Colors.white, size: 35.0),),
           Tab(icon: Icon(Icons.home, color: Colors.white, size: 35.0),),
           Tab(icon: Icon(Icons.home, color: Colors.white, size: 35.0),),
         ],
         controller: _controller,
       ),
     ),



    );
  }
}





