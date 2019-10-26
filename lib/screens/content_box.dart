import 'package:flutter/material.dart';
import 'package:flutter_leapper/screens/detail_screen.dart';
import '../utils/data.dart'; // pictures

// 这里开始尝试一下 高级功能
// ContentBox 本身已经是被包含在 ListView, 所以本身已经具有了滚动的功能
// 当前只需要考虑里面应该如何排列。
// 考虑 用一种随机的排列方式， 1--3的随机数，结合图片的尺寸比例来排列

// 一个想法， 比如 按照照片列表的index, 0--a, 1&2--b, 3---a, 4&5--b,需要算法。。

class ContentBox extends StatelessWidget {
  // Image.asset(pictures[1].picturePath);
  @override
  Widget build(BuildContext context) {
    const double unitHeight = 180;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: <Widget>[
          GestureDetector(

            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => DetailScreen()
              ));
            },

            child: Container(
              height: unitHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
//            gradient: LinearGradient(
//              colors: [Colors.grey, Colors.white],
//              begin: FractionalOffset(0.0, 0.3),
//            ),
//
//            boxShadow: [
//              BoxShadow(
//                color: Color(0xFFf78a6c).withOpacity(0.6),
//                offset: Offset(0.0, 10.0),
//              ),
//            ],

//            color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage(pictures[5].picturePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          SizedBox(height: 5),
          Container(
            height: unitHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: unitHeight - 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(pictures[1].picturePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: unitHeight - 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(pictures[3].picturePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: unitHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(pictures[0].picturePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: unitHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(pictures[7].picturePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: unitHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: unitHeight - 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(pictures[2].picturePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: unitHeight - 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(pictures[4].picturePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: unitHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(pictures[6].picturePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
