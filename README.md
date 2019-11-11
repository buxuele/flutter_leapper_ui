### flutter_leapper_ui

Ok, now it&#x27;s on my own.


Based on this image 
![target](https://raw.githubusercontent.com/buxuele/flutter_leapper_ui/master/target.png)

Screenshots:
![homePage](https://raw.githubusercontent.com/buxuele/flutter_leapper_ui/master/01.jpg)
![detailPage](https://raw.githubusercontent.com/buxuele/flutter_leapper_ui/master/02.jpg)


10/30
1.想让 BottomNavigationBar 漂浮起来，很简单啊，直接加padding就行了。
2.如果想显示圆角， [参见](https://stackoverflow.com/questions/56577265/how-to-set-border-radius-to-bottom-app-bar-in-a-flutter-app)
大致意思是，把 BottomNavigationBar 放到一个 stack 的最外层，然后整体再放到body里面
3.而且，关于添加圆角， 如果直接在 BottomNavigationBar上添加 DecoratedBox 是不起效果的。
改用 ClipRRect().



10/26
1. 继续完善这个app
2. 图片之间可以添加 Hero 动画效果。

