import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

      children: const [

        Icon(Icons.settings),
        kWidth,
        Text("Smart Downloads",style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18
        ),),
      ],
    );
  }
}
