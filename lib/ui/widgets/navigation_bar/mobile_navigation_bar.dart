import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';

class MobileNavigationBar extends StatelessWidget {
  const MobileNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        IconButton(
          iconSize: mediumSize,
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        Image.asset('assets/kadosh-title.png'),
      ],
    );
  }
}
