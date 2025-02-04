import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/widgets/horizantal_menu_bar_card_widget.dart';

import '../contant.dart';
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
              height: size.width / 4,
              width: size.width / 1,
              child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: HorizontalMenuBarCard(
                        horizontalMenuBarTextUrlList:
                            horizontalMenuBarTextUrlList,
                        horizontalMenuBarImgUrlList:
                            horizontalMenuBarImgUrlList,
                        index: index,
                      ),
                    );
                  }),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width / 25),
            child: Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height / 4,
                  decoration: const BoxDecoration(
                      color: Color(0xffF7F3F0),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Positioned(
                  left: 30,
                  top: 30,
                  bottom: 0,
                  child: SizedBox(
                    width: size.width / 2.2,
                    child: Text(
                      'Meditation 101',
                      style: GoogleFonts.alegreya(
                          color: Colors.black,
                          fontSize: size.width / 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  bottom: 100,
                  child: SizedBox(
                    width: size.width / 2.2,
                    child: Text(
                      'Techniques, Benefits, and a Beginner’s How-To',
                      style: GoogleFonts.alegreya(
                          color: Colors.black,
                          fontSize: size.width / 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Positioned(
                    child: SizedBox(
                  width: size.width / 2.8,
                  height: size.width / 3,
                      child: Image.asset(''),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
