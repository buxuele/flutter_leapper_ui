// 这里充当的是 数据库的功能， 以后看看再加几个功能， 数据的添加 删除等。。。

class Picture {
  final String picturePath;
  final String about;

  // final bool isLiked;

  Picture(this.picturePath, this.about);
}


final List<Picture> pictures = [
    Picture("assets/images/1.jpg", "nature"),
    Picture("assets/images/2.jpg", "buildings"),
    Picture("assets/images/3.jpg", "buildings"),
    Picture("assets/images/4.jpg", "life"),
    Picture("assets/images/5.jpg", "nature"),
    Picture("assets/images/6.jpg", "life"),
    Picture("assets/images/7.jpg", "buildings"),
    Picture("assets/images/8.jpg", "life"),
];
