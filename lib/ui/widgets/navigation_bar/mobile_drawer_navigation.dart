import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/navigation_bar/nav_bar_item.dart';
import 'package:kadosh_website/ui/widgets/navigation_bar/language_switcher.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kcCardBackground,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
                color: kcPrimaryBackground,
                image: DecorationImage(
                    image: AssetImage('assets/kadosh-title.png'))),
            child: Container(),
          ),
          const ListTile(title: NavBarItem(NavRoute.home, isMobile: true)),
          verticalSpaceSmall,
          const ListTile(title: NavBarItem(NavRoute.about, isMobile: true)),
          verticalSpaceSmall,
          const ListTile(title: NavBarItem(NavRoute.team, isMobile: true)),
          verticalSpaceSmall,
          const ListTile(title: NavBarItem(NavRoute.events, isMobile: true)),
          verticalSpaceMedium,
          const ListTile(title: LanguageSwitcher(isMobile: true)),
        ],
      ),
    );
  }
}
