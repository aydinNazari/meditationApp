import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenCardWidget extends StatelessWidget {
  const HomeScreenCardWidget({
    super.key, required this.txt1, required this.txt2, required this.imgUrl,

  });

  final String txt1;
  final String txt2;
  final String imgUrl;


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 4.2,
          decoration: const BoxDecoration(
              color: Color(0xffF7F3F0),
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        Positioned(
          left: 30,
          top: 35,
          bottom: 0,
          child: Text(
            txt1,
            style: GoogleFonts.alegreya(
                color: Colors.black,
                fontSize: txt1.length > 14 ? size.width/16 :size.width / 15,
                fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
          left: 30,
          bottom: txt2.length > 55 ? 100 :100,
          child: SizedBox(
            width: size.width / 2.2,
            child: Text(
              txt2,
              style: GoogleFonts.alegreya(
                  color: Colors.black,
                  fontSize: size.width / 28,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: SizedBox(
            width: size.width / 2,
            height: size.width / 2,
            child: Image.asset(
                imgUrl),
          ),
        ),
        Positioned(
            left: 30,
            bottom: 20,
            child: Container(
              width: size.width / 2.5,
              height: size.width / 8,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xff253334)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'watch now',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width / 25),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        size: 15,
                        Icons.play_arrow,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}