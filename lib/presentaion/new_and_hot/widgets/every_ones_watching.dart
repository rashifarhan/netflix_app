import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants/constants.dart';
import 'package:netflix_app/presentaion/home/widgets/icon_and_text.dart';
import 'package:netflix_app/presentaion/new_and_hot/widgets/every_one_watching_widget.dart';
import 'package:netflix_app/presentaion/widgets/video_widget.dart';

import '../../../core/colors/colors.dart';

class EveryOnesWatching extends StatelessWidget {
  const EveryOnesWatching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;

    return ListView.builder(
      itemBuilder: (context, index) {
      return EveryOneWatchingWidget();
    },
    itemCount: 5,);

  }
}
