import 'dart:math';

import 'package:flutter/material.dart';

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({Key? key,required this.imageList,required this.rotation,required this.margin,required this.size}) : super(key: key);
  final String imageList;
  final double rotation;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {

    return  Transform.rotate(
      angle: rotation*pi/180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageList)),


        ),
      ),
    );
  }
}
