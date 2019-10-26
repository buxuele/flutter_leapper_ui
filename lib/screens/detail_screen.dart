import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../utils/data.dart';

class DetailScreen extends StatelessWidget {
  Widget _buildBanner() {
    return AppBar(
//      leading: Icon(Icons.keyboard_backspace, color: Colors.black, size: 30,),
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: Icon(Icons.keyboard_backspace, color: Colors.black, size: 30),
            tooltip: "go back to home",
            onPressed: () {
              Navigator.pop(context);
            },
          );
        },
      ),
      actions: <Widget>[
        Icon(
          Icons.radio_button_checked,
          color: Colors.black,
          size: 30,
        ),
      ],
    );
  }

  Widget _buildPictureBox() {
    const double unitHeight = 250;

    return Container(
      height: unitHeight,
      width: unitHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [Colors.grey, Colors.black],
          begin: FractionalOffset(0.0, 0.3),
        ),
        boxShadow: [
          BoxShadow(
//            color: Color(0xFFf78a6c).withOpacity(0.6),
            color: Colors.grey.withOpacity(0.6),
            offset: Offset(0.0, 3.0), // 给一丝丝的阴影
          ),
        ],
        image: DecorationImage(
          image: AssetImage(pictures[5].picturePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // 其实这一部分完全可以用ListTile later on
  Widget _buildUserInfo() {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          // user info
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/4.jpg"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "Andrik Langfield",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "@andriklangfield",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(),
                ),
                child: FlatButton(
                  onPressed: () => print("ooooh yeah"),
                  child: Text(
                    "+  Collect",
                    style: TextStyle(fontSize: 15),
                  ),
                  shape: RoundedRectangleBorder(),
//                  color: Colors.white60,
                ),
              ),
            ],
          ),

          // picture labels, topics, 这里应该具有button的功能。

          Padding(
            padding: EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Text(
                        "Minimal",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                SizedBox(
                  height: 30,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Cactus",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                SizedBox(
                  height: 30,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "HD",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                SizedBox(
                  height: 30,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Macro",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 这里其实需要建立更详细的数据，暂时使用虚假的数据代替效果了，
  // 这一部分我觉得是最难的了
  Widget _buildPictureInfo() {
    return Container(
      height: 180,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
//          mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ListTile(
                title: Text(
                  "Info",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Published on January 2, 2019",
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12.5,
                ),
                child: Row(
                  // views and downloads
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // !!align to left
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.remove_red_eye,
                              color: Colors.black45,
                            ),
                            Text(
                              "View",
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "1,195,785",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "+173,974 since last month",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, //
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.remove_red_eye),
                            Text("View"),
                          ],
                        ),
                        Text(
                          "1,195,785",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "+173,974 since last month",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
//              Container(height: 30, color: Colors.red,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  // 这里和首页一样，又涉及到自定义一个 底部导航栏了。。
  Widget _buildDownloadButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Icon(Icons.favorite, color: Colors.pinkAccent,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Download free",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
            Icon(Icons.arrow_downward, color: Colors.pinkAccent,),
          ],
        ),
      ],
    );

  } // later on

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: _buildBanner(),
      body: ListView(
        children: <Widget>[
          _buildPictureBox(),
          _buildUserInfo(),
          _buildPictureInfo(),

          _buildDownloadButton(),   // todo use bottomBar
        ],
      ),
    );
  }
}
