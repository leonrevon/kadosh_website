import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/centered_view.dart';
import 'package:kadosh_website/ui/widgets/footer.dart';
import 'package:kadosh_website/ui/widgets/navigation_bar/nav_bar_item.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      drawer: Drawer(
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
            ListTile(title: NavBarItem('Home')),
            verticalSpaceSmall,
            ListTile(title: NavBarItem('About')),
            verticalSpaceSmall,
            ListTile(title: NavBarItem('Team')),
            verticalSpaceSmall,
            ListTile(title: NavBarItem('Videos')),
          ],
        ),
      ),
      appBar: AppBar(
        title: Image.asset('assets/kadosh-title.png'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1),
        ),
      ),
      body: CenteredView(
        isMobile: false,
        child: Stack(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.2,
                  child: Image.asset(
                    'assets/orange-sky.jpg',
                    fit: BoxFit.cover,
                    height: screenHeight(context),
                    width: screenWidth(context),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/kadosh-logo.png',
                          ),
                          verticalSpaceMedium,
                          Text(
                            'MAKE DISCIPLES OF NATIONS...',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              height: 0.9,
                              fontSize: getResponsiveMassiveFontSize(context),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          verticalSpaceSmall,
                          Text(
                            'A group of friends, different origins, one destination - Kadosh.',
                            style: TextStyle(
                              fontSize: getResponsiveLargeFontSize(context),
                              height: 1.7,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
