import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:netflix_app/core/constants/constants.dart';
import 'package:netflix_app/presentaion/search/widgets/title.dart';

import '../../../core/colors/colors.dart';
const imageUrl="https://www.themoviedb.org/t/p/w250_and_h141_face/ovM06PdF3M8wvKb06i4sjW3xoww.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      SearchTextTitle(title: "Top Searches"),
       kHeight,
       Flexible(
         child: ListView.separated(
             itemBuilder: (context, index) {
           return TopSearchItemTile();
         }, separatorBuilder: (context, index) => kHeight20, itemCount: 10),
       )


     ],
   );
  }
}
class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: size.width*.2,
          width: size.width*.36,

          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: NetworkImage(imageUrl))
          ),
        ),
        kWidth,
        Expanded(
          child: Text("Movie Name",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),),
        ),
        CircleAvatar(
          backgroundColor: white,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: black,
            radius: 23,
            child: Icon(CupertinoIcons.play_fill,color: white,),
          ),
        )

      ],
    );
  }
}

