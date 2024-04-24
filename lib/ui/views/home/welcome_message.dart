import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'WELCOME TO KADOSH',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            height: 0.9,
            fontSize: 40.0,
          ),
        ),
        verticalSpaceMedium,

        // TODO: localization possibility with this
        Text(
          'A Catholic spiritual community where faith, music, and community converge. Join us on our journey of joy, perseverance, and faith as we share the message of Christ. Explore our website and discover a place of inspiration, connection, and spiritual growth.',
          style: TextStyle(
            fontSize: 21,
            height: 1.7,
          ),
        ),
      ],
    );
  }
}
