import 'package:flutter/material.dart';

class PhotoCircle extends StatelessWidget {
  final String personImage;
  const PhotoCircle(this.personImage, {super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50.0,
      backgroundImage: AssetImage(personImage),
    );
  }
}
