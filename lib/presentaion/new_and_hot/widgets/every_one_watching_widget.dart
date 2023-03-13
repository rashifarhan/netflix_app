import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../home/widgets/icon_and_text.dart';
import '../../widgets/video_widget.dart';

class EveryOneWatchingWidget extends StatelessWidget {
  const EveryOneWatchingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        kHeight,
        const Text(
          "Friends",
          style: TextStyle(
            letterSpacing: -1,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        Text(
          "Friends is an American television sitcom created by David Crane and Marta Kauffman, which aired on NBC from September 22, 1994, to May 6, 2004, lasting ten seasons.[1] With an ensemble cast starring Jennifer Aniston, Courteney Cox, Lisa Kudrow, Matt LeBlanc, Matthew Perry and David Schwimmer, the show revolves around six friends in their 20s and 30s who live in Manhattan, New York City. ",
          style: TextStyle(
              fontSize: 12,
              color: white.withOpacity(0.7),
              fontWeight: FontWeight.bold
          ),
        ),
        kHeight20,
        VideoWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconTextWidget(icon: Icons.share, text: "Share", iconSize: 20, textSize: 15),
            kWidth,
            IconTextWidget(icon: Icons.add, text: "My List", iconSize: 20, textSize: 15),
            kWidth,
            IconTextWidget(icon: Icons.play_arrow, text:"Play", iconSize: 20, textSize: 15),
          ],
        )

      ],
    );
  }
}
