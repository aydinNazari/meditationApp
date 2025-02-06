import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/icon_widget.dart';
import '../widgets/sound_card_row_widget.dart';

class SoundsScreen extends StatelessWidget {
  const SoundsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                  IconWidget(photoUrl: 'assets/icons/logo.png'),
                  Spacer(),
                  IconWidget(photoUrl: 'assets/icons/Ellipse 2.png'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height / 4,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Image.asset('assets/images/Rectangle 23.png'),
                ),
                Positioned(
                  left: 65,
                  top: 45,
                  child: Text(
                    'Relax Sounds',
                    style: GoogleFonts.alegreya(
                        color: Colors.white,
                        fontSize: size.width / 14.5,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Positioned(
                  left: 65,
                  top: 85,
                  child: SizedBox(
                    width: size.width / 2,
                    child: Text(
                      'Sometimes the most productive thing you can do is relax.',
                      style: GoogleFonts.alegreya(
                          color: Colors.grey.shade100,
                          fontSize: size.width / 28,
                          height: 1.1,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Positioned(
                  left: 65,
                  bottom: 40,
                  child: Container(
                    width: size.width / 2.7,
                    height: size.height / 20,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'play now',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: size.width / 25),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 15,
                          height: 15,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              size: 12,
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            ListView.builder(
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width / 16),
                    child: SoundCardRowWidget(
                      index: index,
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}


