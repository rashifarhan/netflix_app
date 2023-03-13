import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/presentaion/search/widgets/search_idle.dart';
import 'package:netflix_app/presentaion/search/widgets/search_result.dart';
import '../../core/colors/colors.dart';
import '../../core/constants/constants.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(

      body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.all(size.width*0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CupertinoSearchTextField(
                  backgroundColor: grey.withOpacity(0.4),
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                    color: grey,
                  ),
                  suffixIcon: const Icon(
                    CupertinoIcons.xmark_circle_fill,
                    color: grey,
                  ),
                  style: TextStyle(color: white),
                ),
                kHeight,

                //Expanded(child: SearchIdleWidget()),
                Expanded(child: SearchIdleWidget()),
              ],
            ),
          )),
    );
  }
}
