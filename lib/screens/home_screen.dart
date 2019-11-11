import 'package:flutter/material.dart';

import '../widgets/search_box.dart'; // SearchBox
import '../widgets/topic_box.dart'; // TopicBox
import '../widgets/content_box.dart'; // ContentBox

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

  Widget _buildBottomBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),

        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: Colors.black,
          iconSize: 30, // 改变所有的图标大小

          onTap: (index) {
            _pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 100),
              curve: Curves.easeInCirc,
            );
            setState(() {
              _currentIndex = index;
            });
          },

          items: [
            selectedItemColor: Colors.blue,

            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 35.0,
                color: Colors.white,
              ),
              title: SizedBox.shrink(),
              backgroundColor: Colors.pinkAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.control_point, size: 35.0, color: Colors.white,),
              title: SizedBox.shrink(),
              backgroundColor: Colors.pinkAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                size: 35.0,
                color: Colors.white,
              ),
              title: SizedBox.shrink(),
              backgroundColor: Colors.pinkAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
                size: 35.0,
                color: Colors.white,
              ),
              title: SizedBox.shrink(),
              backgroundColor: Colors.pinkAccent,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70, // white70

      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              // needs 4 sons
              ListView(
                children: [
                  SearchBox(),
                  TopicBox(),
                  ContentBox(),
                ],
              ),
              Scaffold(
                backgroundColor: Colors.pinkAccent,
              ),
              Scaffold(
                backgroundColor: Colors.blueAccent,
              ),
              Scaffold(
                backgroundColor: Colors.cyanAccent,
              ),
            ],
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildBottomBar(),
          )
        ],
      ),

//      bottomNavigationBar: _buildBottomBar(),
    );
  }
}
