import 'package:flutter/widgets.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';

class WebNavigationBar extends StatelessWidget {
  final bool isTablet;
  const WebNavigationBar({super.key, required this.isTablet});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 295,
            width: 189,
            child: Image.asset('assets/kadosh-logo.png'),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const _NavBarItem('Home'),
              horizontalSpaceLarge,
              const _NavBarItem('About'),
              horizontalSpaceLarge,
              const _NavBarItem('Ministries'),
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
      style: const TextStyle(fontSize: 18),
    );
  }
}
