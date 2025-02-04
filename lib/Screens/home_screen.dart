import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/icon_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width / 25),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                textAlign: TextAlign.start,
                softWrap: true,
                'Welcome back, Afreen!',
                style: GoogleFonts.alegreya(
                  color: Colors.white,
                  fontSize: size.width / 13,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width / 25),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                textAlign: TextAlign.start,
                softWrap: true,
                'How are you feeling today?',
                style: GoogleFonts.alegreyaSans(
                  color: Colors.white70,
                  fontSize: size.width / 18,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width / 35),
            child: SizedBox(
              height: size.width / 6,
              width: size.width / 1,
              child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Container(
                        width: size.width / 6,
                        height: size.width / 6,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            //  image: DecorationImage(image: AssetImage('assets/icons/Vector.png')),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Image.asset('assets/icons/Vector.png'),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
