import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/icon_widget.dart';

class SoundsScreen extends StatelessWidget {
  const SoundsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  IconWidget(photoUrl: 'assets/icons/Logo.png'),
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
                  'Welcome back, Aydın!',
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
                child: const HomeScreenCardWidget(
                    txt1: 'Meditation 101',
                    txt2: 'Techniques, Benefits, and a Beginner’s How-To',
                    imgUrl: 'assets/images/2844687-removebg-preview 1.png')),
            SizedBox(height: size.height/50,),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width / 25),
                child: const HomeScreenCardWidget(
                    txt1: 'Cardio Meditation',
                    txt2: 'Basics of Yoga for Beginners or Experienced Professionals',
                    imgUrl: 'assets/images/2831156-removebg-preview 1.png')),
            const SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}
