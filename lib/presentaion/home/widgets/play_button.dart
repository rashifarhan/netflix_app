import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextButton.icon(onPressed: () {

    },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(white)
        ),
        icon: Icon(

          Icons.play_arrow,size: 25,color: black,), label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text("Play",style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: black,
          ),),
        ));
  }
}
