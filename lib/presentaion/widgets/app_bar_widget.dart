import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
class appBarWidget extends StatelessWidget {
  const appBarWidget({Key? key,required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(


        children: [
          kWidth,
          Text(title,style: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),
          Spacer(),

          Row(
            children: [

              Icon(Icons.cast_sharp,size: 26,),
              kWidth,
              Container(
                width: 25,
                height: 25,

                color: Colors.blue,)
            ],
          ),
          kWidth

        ],
      ),
    );
  }
}
