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
                  IconWidget(photoUrl: 'assets/icons/logo.png'),
                  Spacer(),
                  IconWidget(photoUrl: 'assets/icons/Ellipse 2.png'),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: size.width,
              height: size.height/4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Image.asset('assets/images/Rectangle 23.png'),
            )
          ],
        ),
      ),
    );
  }
}
