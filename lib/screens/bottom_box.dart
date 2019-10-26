import 'package:flutter/material.dart';

class BottomBox extends StatefulWidget {
  @override
  _BottomBoxState createState() => _BottomBoxState();
}


// 这一部分 需要固定在底部。而且需要一个椭圆的边框。等等再说。
class _BottomBoxState extends State<BottomBox> {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      child: Positioned(
        left: 5,
        right: 5,
        bottom: 5,
        child: Row(
          children: <Widget>[
            Icon(Icons.home, color: Colors.pinkAccent, size: 35.0),


          ],
        ),
      ),
    );
  }
}
