import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './search_box.dart';   // SearchBox
import './topic_box.dart';    // TopicBox
import './content_box.dart';  // ContentBox
//import './bottom_box.dart';   // BottomBox



class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_handlePageChange);
  }


  @override
  void dispose() {
    _pageController.removeListener(_handlePageChange);
    super.dispose();
  }

  void _handlePageChange() {
    setState(() {
      _currentIndex = _pageController.page.round();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,   // white70

//      body: ListView(
//        children: <Widget>[
//          SearchBox(),
//          TopicBox(),
//          ContentBox(),
//
//        ],
//      ),


        body: PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          children: <Widget>[             // needs 4 sons
            ListView(children: [SearchBox(), TopicBox(), ContentBox(),],),
            Scaffold(backgroundColor: Colors.pinkAccent,),
            Scaffold(backgroundColor: Colors.blueAccent,),
            Scaffold(backgroundColor: Colors.cyanAccent,),
          ],
        ),

        // bottomBar 这里有2中写法：一种是按照scaffold里面内定的，
        // 还一种是自定义， 用 positioned(),这个更贴近原图。。。

//     bottomNavigationBar: BottomBox(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.black,
        iconSize: 30,     // 改变所有的图标大小

        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 100),
            curve: Curves.easeInCirc,);
          setState(() {
            _currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 35.0,color: Colors.pinkAccent,),
              title: SizedBox.shrink()
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.control_point, size: 35.0,color: Colors.blueGrey),
              title: SizedBox.shrink()
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border, size: 35.0,color: Colors.blueGrey,),
              title: SizedBox.shrink()
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz, size: 35.0,color: Colors.blueGrey,),
              title: SizedBox.shrink()
          ),
        ],

      ),

    );
  }
}













































