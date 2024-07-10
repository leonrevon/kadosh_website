import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kadosh_website/app/app.locator.dart';
import 'package:kadosh_website/app/app.router.dart';
import 'package:kadosh_website/extensions/hover_extensions.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:stacked_services/stacked_services.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final bool isMobile;
  const NavBarItem(this.title, {super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    final routerService = locator<RouterService>();
    return GestureDetector(
      onTap: () => _navigateTo(title, routerService: routerService),
      child: Text(
        title,
        style: TextStyle(
          fontSize: isMobile
              ? getResponsiveLargeFontSize(context)
              : getResponsiveSmallFontSize(context),
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
