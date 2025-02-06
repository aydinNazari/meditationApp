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
List<String> imgSoundsList =[
  'assets/images/Rectangle_22.png',
  'assets/images/Rectangle 25.png',
  'assets/images/Rectangle 26.png',
  'assets/images/Rectangle 28(1).png',
];List<String> txt1SoundsList =[
  'Painting Forest',
  'Mountaineers',
  'Lovely Deserts',
  'The Hill Sides'];
List<String> txt2SoundsList =[
  '59899 Listening',
  '45697 Listening',
  '22233 Listening',
  '22312 Listening'];
List<String> txt3SoundsList =[
  '20 Min',
  '10 Min',
  '80 Min',
  '39 Min'];