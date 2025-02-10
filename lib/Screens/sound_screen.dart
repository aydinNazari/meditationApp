import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/contant.dart';

import '../widgets/icon_widget.dart';

class SoundScreen extends StatelessWidget {
  const SoundScreen({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width / 25),
            child: const Row(
              children: [
                IconWidget(photoUrl: 'assets/icons/more.png'),
                Spacer(),
                IconWidget(photoUrl: 'assets/icons/logo.png'),
                Spacer(),
                IconWidget(photoUrl: 'assets/icons/Ellipse 2.png'),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: size.width,
            height: size.height / 3.5,
            child: Image.asset('assets/images/Album Art.png'),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            textAlign: TextAlign.start,
            softWrap: true,
            txt1SoundsList[index],
            style: GoogleFonts.alegreya(
              color: Colors.white,
              fontSize: size.width / 13,
            ),
          ),
          Text(
            textAlign: TextAlign.start,
            softWrap: true,
            'By: Painting with Passion',
            style: GoogleFonts.alegreya(
              color: Colors.white60,
              fontSize: size.width / 15,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          SizedBox(
            width: size.width,
            child: Image.asset('assets/images/Time.png'),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            width: size.width,
            child: Image.asset('assets/icons/Group(1).png'),
          )
        ],
      ),
    );
  }
}
