import 'package:flutter/material.dart';
import 'package:netflix_app/presentaion/widgets/video_widget.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../home/widgets/icon_and_text.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: size.height * 0.52,
          width: size.width * 0.1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FEB",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: white.withOpacity(0.7),
                ),
              ),
              const Text(
                "11",
                style: TextStyle(
                    letterSpacing: 4,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width * 0.9,
          height: size.height * 0.52,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              kHeight30,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "TALL GIRL 2",
                    style: TextStyle(
                      letterSpacing: -4,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      IconTextWidget(
                        icon: Icons.notifications_none_sharp,
                        text: "Remind me",
                        iconSize: 27,
                        textSize: 15,
                      ),
                      kWidth,
                      IconTextWidget(
                        icon: Icons.info_outline_rounded,
                        text: "Info",
                        iconSize: 27,
                        textSize: 15,
                      ),
                    ],
                  )
                ],
              ),
              kHeight,
              Text(
                "Coming on Friday",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: white.withOpacity(0.8),
                ),
              ),
              kHeight,
              const Text(
                "TALL GIRL 2",
                style: TextStyle(
                  letterSpacing: -1,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight,
              Text(
                "The relationship between Jodi and Dunkleman begins on a lovely note, with the two sharing romantic moments. Jodi has become one of the well known kids at school as a result of her speech at the Homecoming dance, who high-fives other students instead of staring down the hallways.",
                style: TextStyle(
                  color: white.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
