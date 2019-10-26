import 'package:flutter/material.dart';

// 实际上的搜索功能 以后再搞
// 这个搜索框的 UI 其实很有用。
class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // 这个控制的是 整体的 位置与填充
      padding: EdgeInsets.only(bottom: 20),

      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Padding(

          // 这个padding 控制的是下面这一行的间距
          padding: EdgeInsets.only(left: 15, top: 18, bottom: 18, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "RealStock",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(    // 这个可能没什么用
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.search,
                      // bg
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.favorite_border,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
