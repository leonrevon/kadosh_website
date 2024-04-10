import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';

class MobileNavigationBar extends StatelessWidget {
  const MobileNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
            iconSize: mediumSize,
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          SizedBox(
            height: 295,
            width: 189,
            child: Image.asset('assets/kadosh-logo.png'),
          ),
        ],
      ),
    );
  }
}
