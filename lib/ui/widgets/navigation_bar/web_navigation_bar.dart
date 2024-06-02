import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kadosh_website/app/app.locator.dart';
import 'package:kadosh_website/app/app.router.dart';
import 'package:kadosh_website/extensions/hover_extensions.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:stacked_services/stacked_services.dart';

class WebNavigationBar extends StatelessWidget {
  const WebNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: largeSize, right: largeSize),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/kadosh-title.png'),
          const Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarItem('Home'),
              horizontalSpaceLarge,
              _NavBarItem('About'),
              horizontalSpaceLarge,
              _NavBarItem('Team'),
              horizontalSpaceLarge,
              _NavBarItem('Videos'),
              horizontalSpaceMedium,
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
    final routerService = locator<RouterService>();
    return GestureDetector(
      onTap: () => _navigateTo(title, routerService: routerService),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    ).moveOnHover(y: -5.0).scaleOnHover(scale: 1.2);
  }

  _navigateTo(String title, {required RouterService routerService}) {
    switch (title) {
      case 'Home':
        routerService.navigateToHomeView();
      case 'About':
        routerService.replaceWithAboutView();
      //TODO: other navigation tab
      default:
        routerService.navigateToHomeView();
    }
  }
}
