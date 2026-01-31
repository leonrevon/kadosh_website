import 'package:flutter/material.dart';
import 'package:kadosh_website/app/app.locator.dart';
import 'package:kadosh_website/app/app.router.dart';
import 'package:kadosh_website/extensions/hover_extensions.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:kadosh_website/l10n/app_localizations.dart';

enum NavRoute { home, about, team, events }

class NavBarItem extends StatelessWidget {
  final NavRoute route;
  final bool isMobile;
  const NavBarItem(this.route, {super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    final routerService = locator<RouterService>();
    final l10n = AppLocalizations.of(context)!;

    return GestureDetector(
      onTap: () => _navigateTo(route, routerService: routerService),
      child: Text(
        _getLabel(l10n),
        style: TextStyle(
          fontSize: isMobile
              ? getResponsiveLargeFontSize(context)
              : getResponsiveSmallFontSize(context),
          color: kcTextPrimary,
          fontWeight: FontWeight.w500,
        ),
      ),
    ).moveOnHover(y: -5.0).scaleOnHover(scale: 1.2);
  }

  String _getLabel(AppLocalizations l10n) {
    switch (route) {
      case NavRoute.home:
        return l10n.navHome;
      case NavRoute.about:
        return l10n.navAbout;
      case NavRoute.team:
        return l10n.navTeam;
      case NavRoute.events:
        return l10n.navEvents;
    }
  }

  _navigateTo(NavRoute route, {required RouterService routerService}) {
    switch (route) {
      case NavRoute.home:
        routerService.navigateToHomeView();
      case NavRoute.about:
        routerService.navigateToAboutView();
      case NavRoute.team:
        routerService.navigateToTeamView();
      case NavRoute.events:
        routerService.navigateToEventsView();
    }
  }
}
