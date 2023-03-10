import 'package:flutter/material.dart';
import 'package:netflix_app/presentaion/fast_laughs/widgets/video_list_item.dart';

class FastLaughs extends StatelessWidget {
  const FastLaughs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index){
          return VideoListItem(index: index,);
        })
      )),
    );
  }
}
