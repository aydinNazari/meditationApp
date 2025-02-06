import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../contant.dart';

class SoundCardRowWidget extends StatelessWidget {
  const SoundCardRowWidget({
    super.key,
    //required this.imgUrlList,
    required this.index,
    //  required this.size,
  });



  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: size.width / 5,
          height: size.width / 5,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Image.asset(imgSoundsList[index]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                txt1SoundsList[index],
                style: GoogleFonts.alegreyaSans(
                    color: Colors.white,
                    fontSize: size.width / 18,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                txt2SoundsList[index],
                style: GoogleFonts.alegreyaSans(
                    color: Colors.grey.shade600,
                    fontSize: size.width / 30,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(
            txt3SoundsList[index],
            style: GoogleFonts.alegreyaSans(
                color: Colors.grey.shade600,
                fontSize: size.width / 30,
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
