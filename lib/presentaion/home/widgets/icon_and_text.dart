import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final double iconSize;
  final double textSize;
  const IconTextWidget({Key? key,required this.icon,required this.text,required this.iconSize,required this.textSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,size: iconSize,),
        Text(text,style: TextStyle(fontSize: textSize,fontWeight: FontWeight.w500),),
      ],
    );
  }
}
