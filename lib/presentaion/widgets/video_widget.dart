import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return  Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          height: size.height * 0.2,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/3n2TjKw3HrwDqgVgcynvantOfS3.jpg")),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.6),
            radius: 20,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.volume_off,
                  size: 20,
                  color: white,
                )),
          ),
        ),
      ],
    );
  }
}
