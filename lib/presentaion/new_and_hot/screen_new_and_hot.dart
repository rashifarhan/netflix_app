import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentaion/new_and_hot/widgets/coming-soon.dart';
import 'package:netflix_app/presentaion/new_and_hot/widgets/every_ones_watching.dart';

import '../../core/constants/constants.dart';
import '../widgets/app_bar_widget.dart';

class NewAndHot extends StatelessWidget {
  const NewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("New & Hot",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          actions: [
            const Icon(
              Icons.cast_sharp,
              size: 26,
            ),
            kWidth,
            UnconstrainedBox(
              child: Container(
                width: 25,
                height: 25,
                color: Colors.blue,
              ),
            ),
            kWidth
          ],
          bottom: TabBar(
            isScrollable: true,
            labelColor: black,
            unselectedLabelColor: white,
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,

            ),
            indicator: BoxDecoration(
              color: white,
              borderRadius:kRadius30,

            ),
              tabs: [
            Tab(
              text: "🍿 Coming Soon",
            ),
            Tab(
              text: "👀 Everyones's watching",
            ),
          ]),
        ),
        body: TabBarView(children: [
          ComingSoon(),
          EveryOnesWatching(),



        ])
      ),
    );
  }
}
