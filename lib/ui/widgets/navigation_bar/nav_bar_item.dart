import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kadosh_website/app/app.locator.dart';
import 'package:kadosh_website/app/app.router.dart';
import 'package:kadosh_website/extensions/hover_extensions.dart';
import 'package:stacked_services/stacked_services.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  const NavBarItem(this.title, {super.key});

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
