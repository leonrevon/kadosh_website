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
      child: ListView(
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
                color: kcPrimaryColor,
                image: DecorationImage(
                    image: AssetImage('assets/kadosh-title.png'))),
            child: Column(
              children: [],
            ),
          ),
          ListTile(title: NavBarItem(NavRoute.home, isMobile: true)),
          verticalSpaceSmall,
          ListTile(title: NavBarItem(NavRoute.about, isMobile: true)),
          verticalSpaceSmall,
          ListTile(title: NavBarItem(NavRoute.team, isMobile: true)),
          verticalSpaceSmall,
          ListTile(title: NavBarItem(NavRoute.events, isMobile: true)),
          verticalSpaceMedium,
          ListTile(title: LanguageSwitcher(isMobile: true)),
        ],
      ),
    );
  }
}
