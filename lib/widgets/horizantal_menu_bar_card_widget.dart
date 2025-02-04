import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalMenuBarCard extends StatelessWidget {
  const HorizontalMenuBarCard({
    super.key,
    required this.horizontalMenuBarImgUrlList,
    required this.index,
    required this.horizontalMenuBarTextUrlList,
    //required this.size,
  });

  final List<String> horizontalMenuBarImgUrlList;
  final List<String> horizontalMenuBarTextUrlList;
  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width / 6,
          height: size.width / 6,
          decoration: const BoxDecoration(
              color: Colors.white,
              //  image: DecorationImage(image: AssetImage('assets/icons/Vector.png')),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Center(child: Image.asset(horizontalMenuBarImgUrlList[index])),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          horizontalMenuBarTextUrlList[index],
          style: GoogleFonts.alegreyaSans(
              color: Colors.white,
              fontSize: size.width / 30,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
