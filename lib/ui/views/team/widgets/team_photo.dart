import 'package:flutter/material.dart';

class TeamPhoto extends StatelessWidget {
  const TeamPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white, // White border color
          width: 4.0, // Border width
        ),
        borderRadius:
            BorderRadius.circular(20.0), // Match the ClipRRect border radius
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          'assets/team.jpg',
          width: MediaQuery.of(context).size.width * 0.9,
        ),
      ),
    );
  }
}
