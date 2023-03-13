import 'package:flutter/cupertino.dart';
import 'package:netflix_app/core/constants/constants.dart';
import 'package:netflix_app/presentaion/search/widgets/title.dart';
const imageUrl="https://www.themoviedb.org/t/p/w300_and_h450_bestv2/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg";
class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: "Movies & TV"),
        kHeight,
        Expanded(child: GridView.count(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1/1.4,
          shrinkWrap: true,
            crossAxisCount: 3,
          children: List.generate(20, (index){
            return MainCard();
          }),
        
        
        ))
      ],
    );
  }
}
class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: DecorationImage(
          fit: BoxFit.cover,
            image: NetworkImage(
            imageUrl))
      ),
    );

  }
}

