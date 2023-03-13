import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../widgets/main_title.dart';
import 'number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.only(left: size.width*0.02),
          child: Maintitle(title: "Top 10 Tv Shows In India Today "),
        ),
        kHeight,
        LimitedBox(
            maxHeight: size.height*0.2,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => NumberCard(index: index,),

                itemCount: 10))
      ],
    );
  }
}
