import 'package:flutter/material.dart';
import 'package:untitled1/Screens/home_screen.dart';

import 'Screens/profile_screen.dart';
import 'Screens/sonds_screen.dart';


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
List<Widget> pageList=[
  const HomeScreen(),
  const SoundsScreen(),
  const ProfileScreen(),
];