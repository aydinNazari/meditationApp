import 'package:flutter/material.dart';
import 'package:untitled1/color/color.dart';
import 'package:untitled1/navigator_widget.dart';

import 'Screens/home_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, background: backGroundColor),
        useMaterial3: true,
      ),
      home: const NavigatorWidget(),
    );
  }
}
