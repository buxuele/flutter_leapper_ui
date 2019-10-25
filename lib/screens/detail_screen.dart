import 'package:flutter/material.dart';
import '../utils/data.dart';



class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Image.asset(pictures[5].picturePath),

    );
  }
}
