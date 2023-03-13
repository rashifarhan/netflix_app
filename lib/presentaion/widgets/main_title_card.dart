

import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import 'main_card.dart';
import 'main_title.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  MainTitleCard({
    Key? key,required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.only(left: size.width*0.02),
          child: Maintitle(title: title),
        ),
        kHeight,
        LimitedBox(

            maxHeight: size.height*0.2,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => MainCardWidget(), separatorBuilder: (context, index) => SizedBox(
              width: size.width*0.02,
            ), itemCount: 10)
        )
      ]
    );

  }
}
