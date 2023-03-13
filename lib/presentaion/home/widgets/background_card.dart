import 'package:flutter/material.dart';
import 'package:netflix_app/presentaion/home/widgets/play_button.dart';

import 'icon_and_text.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.70 ,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://dx35vtwkllhj9.cloudfront.net/paramountpictures/smile/images/regions/us/onesheet.jpg"))),
        ),
        Padding(
          padding:  EdgeInsets.only(bottom: size.height*0.06),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [IconTextWidget(icon: Icons.add, text: 'My List', iconSize: 30, textSize: 15,), PlayButton(),IconTextWidget(icon: Icons.info_outline, text: 'Info', iconSize: 30, textSize: 15,)],
          ),
        )
      ],
    );
  }
}
