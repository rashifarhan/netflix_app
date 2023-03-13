import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentaion/home/widgets/background_card.dart';
import 'package:netflix_app/presentaion/home/widgets/icon_and_text.dart';
import 'package:netflix_app/presentaion/home/widgets/number_card.dart';
import 'package:netflix_app/presentaion/home/widgets/number_title_card.dart';
import 'package:netflix_app/presentaion/home/widgets/play_button.dart';
import 'package:netflix_app/presentaion/widgets/main_title_card.dart';

import '../../core/constants/constants.dart';
import '../widgets/main_card.dart';
import '../widgets/main_title.dart';

ValueNotifier<bool> scrolllNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: ValueListenableBuilder(
      valueListenable: scrolllNotifier,
      builder: (context, value, child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrolllNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrolllNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    BackgroundCard(),
                    MainTitleCard(
                      title: 'Released in the past year',
                    ),
                    kHeight,
                    MainTitleCard(
                      title: 'Trending Now',
                    ),
                    kHeight,
                    NumberTitleCard(),
                    kHeight,
                    MainTitleCard(
                      title: 'Tense Drama',
                    ),
                    kHeight,
                    MainTitleCard(
                      title: 'South Indian Cinema',
                    ),
                  ],
                ),
                scrolllNotifier.value == true
                    ? AnimatedContainer(
                  duration: Duration(milliseconds: 1000),
                      child: Container(
                          width: double.infinity,
                          height: size.height * 0.12,
                          color: black.withOpacity(0.15),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8,right: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(
                                      "https://1000logos.net/wp-content/uploads/2017/05/Netflix-Logo-2006.png",
                                      width: 60,
                                      height: 60,
                                    ),

                                    Row(
                                      children: [

                                        Icon(Icons.cast_sharp,size: 30,),
                                        kWidth,
                                        Container(
                                          width: 30,
                                          height: 30,

                                          color: Colors.blue,)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              kHeight20,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Tv Shows",style: kHomeTitleStyle),
                                  Text("Movies",style: kHomeTitleStyle,),
                                  Text("Categories",style: kHomeTitleStyle,),
                                ],
                              )
                            ],
                          ),
                        ),
                    )
                    : kHeight,
              ],
            ),
          );
      },
    ),
        ));
  }
}
