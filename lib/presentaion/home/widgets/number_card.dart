import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

import '../../../core/constants/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key,required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(width: size.width*0.07),
            Container(

              width: size.width*0.3,
              height: size.width*0.6,
              decoration: BoxDecoration(

                  borderRadius: kRadius10,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: NetworkImage("https://www.themoviedb.org/t/p/w220_and_h330_face/4FAA18ZIja70d1Tu5hr5cj2q1sB.jpg"))
              ),

            ),
          ],
        ),
        Positioned(
          left: size.width*0.02,
          bottom: 0,

          child: BorderedText(

            strokeWidth: 5.0,
            strokeColor: white,
            child: Text("${index+1}",style: TextStyle(
              fontWeight: FontWeight.bold,

              decoration: TextDecoration.none,
                color: black,




              fontSize: 100
            ),),
          ),
        ),
      ],
    );
  }
}
