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
      width: size.width / 6,
      height: size.width / 6,
      child: Image.asset(photoUrl),
    );
  }
}