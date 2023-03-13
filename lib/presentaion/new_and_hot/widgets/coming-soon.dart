import 'package:flutter/material.dart';
import 'coming_soon_widget.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 10),
      shrinkWrap: true,
        itemBuilder: (context, index) => const ComingSoonWidget(),

        itemCount: 3);
  }
}
