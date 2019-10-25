import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopicBox extends StatelessWidget {
  final List<Widget> target = [];
  final List<String> topics = [
    "Minimal",
    "Textures&Patterns",
    "Nature",
    "Art",
    "Books",
    "Buildings",
  ];

  // 这里要判断当前的话题是否被选中，
  // 如果选中：字体是红色的，且下面有个圆点， 字体应该更大一点。todo
  List<Widget> _buildRow() {
    for (var i in topics) {

      // 这里我们只是简单先凑合一下
      if (i == "Minimal") {
        target.add(
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "$i  ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.pinkAccent,
                ),
              ),
              Icon(Icons.room,
                color: Colors.pinkAccent,
                size: 12,
              ),
            ],
          ),
        );
      } else {
        target.add(
          Text(
            "$i  ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
            ),
          ),
        );
      }
    }
    return target;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView(
          scrollDirection: Axis.horizontal,

          children: _buildRow(),
        ),
      ),
    );
  }
}
