import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/navigation_bar/nav_bar_item.dart';

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
          ListTile(title: NavBarItem('Home', isMobile: true)),
          verticalSpaceSmall,
          ListTile(title: NavBarItem('About', isMobile: true)),
          verticalSpaceSmall,
          ListTile(title: NavBarItem('Team', isMobile: true)),
          verticalSpaceSmall,
          ListTile(title: NavBarItem('Videos', isMobile: true)),
        ],
      ),
    );
  }
}
