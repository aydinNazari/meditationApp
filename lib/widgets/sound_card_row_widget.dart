import 'package:flutter/material.dart';

class SoundCardRowWidget extends StatelessWidget {
  const SoundCardRowWidget({
    super.key,
    required this.imgUrl,
    required this.txt1,
    required this.txt2,
    required this.txt3,
    //  required this.size,
  });

  final String imgUrl;
  final String txt1;
  final String txt2;
  final String txt3;

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
          child: Image.asset('assets/images/Rectangle_22.png'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Painting Forest',
                style: GoogleFonts.alegreyaSans(
                    color: Colors.white,
                    fontSize: size.width / 18,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '59899 Listening',
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
            '20 Min',
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
