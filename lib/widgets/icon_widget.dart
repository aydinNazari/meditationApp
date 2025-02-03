import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
    required this.photoUrl,
  });


  final String photoUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width / 8,
      height: size.width / 8,
      child: Image.asset(photoUrl),
    );
  }
}