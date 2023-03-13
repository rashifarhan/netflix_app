import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(

      width: size.width*0.35,
      height: size.width*0.6,
      decoration: BoxDecoration(
          borderRadius: kRadius10,
          image: DecorationImage(
            fit: BoxFit.cover,
              image: NetworkImage("https://www.themoviedb.org/t/p/w220_and_h330_face/34m2tygAYBGqA9MXKhRDtzYd4MR.jpg"))
      ),

    );
  }
}
