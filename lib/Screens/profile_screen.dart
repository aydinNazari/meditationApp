import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color/color.dart';
import '../widgets/icon_widget.dart';

class ProfileScreen extends StatefulWidget {
   const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
      
        body: Column(
          children: [
            const SizedBox(
              height: 50,
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
              height: 50,
            ),
            Image.asset('assets/images/Profile Pic.png'),
            Text(
              'Afreen Khan',
              style: GoogleFonts.alegreya(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: size.width / 10),
            ),
            Text(
              'Lucknow, Spain',
              style: GoogleFonts.alegreya(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: size.width / 20),
            ),
            const SizedBox(height: 25,),
            TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              indicatorColor: dividerColor,
              dividerColor: Colors.grey,

              indicator:  UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 5, // Çizginin yüksekliği (kalınlığı)
                  color: dividerColor, // Çizginin rengi
                ),

              ),
              dividerHeight: 5,
             labelStyle: GoogleFonts.alegreyaSans(fontSize: size.width/24,),
             
              tabs: const [
                Tab(text: 'STATS'),
                Tab(text: "ACHIEVEMENTS"),
              ],
            ),

            /// **TabBarView için Expanded Kullanımı**
            Expanded(
              child: TabBarView(
                children: [
                  Image.asset('assets/images/Stats.png'),
                  Center(child: Text('Ayarlar İçeriği', style: TextStyle(color: Colors.white))),
                ],
              ),
            ),
      
          ],
        ),
      ),
    );
  }
}
