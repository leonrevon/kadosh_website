import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';

class WebNavigationBar extends StatelessWidget {
  final bool isTablet;
  const WebNavigationBar({super.key, required this.isTablet});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: largeSize, right: largeSize),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset('assets/kadosh-title.png'),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const _NavBarItem('Home'),
              horizontalSpaceLarge,
              const _NavBarItem('Team'),
              horizontalSpaceLarge,
              const _NavBarItem('Videos'),
              isTablet ? horizontalSpaceSmall : horizontalSpaceMedium,
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
      ),
    );
  }
}
