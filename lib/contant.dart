import 'package:flutter/material.dart';
import 'package:untitled1/Screens/home_screen.dart';

List<String> horizontalMenuBarImgUrlList = [
  'assets/icons/Vector.png',
  'assets/icons/Relax.png',
  'assets/icons/Focus.png',
  'assets/icons/Vector.png'
];
List<String> horizontalMenuBarTextUrlList = [
  'Calm',
  'Relax',
  'Focus',
  'Anxious'
];
List<Widget> screenList=[
  HomeScreen(),
  SoundScreen(),
  ProfileScreen(),
];