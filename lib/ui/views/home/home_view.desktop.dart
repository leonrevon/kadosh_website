import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/centered_view.dart';
import 'package:kadosh_website/ui/widgets/footer.dart';
import 'package:kadosh_website/ui/widgets/navigation_bar/nav_bar_item.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/kadosh-title.png'),
        actions: const [
          NavBarItem('Home'),
          horizontalSpaceLarge,
          NavBarItem('About'),
          horizontalSpaceLarge,
          NavBarItem('Team'),
          horizontalSpaceLarge,
          NavBarItem('Videos'),
          horizontalSpaceMedium,
        ],
        automaticallyImplyLeading: false,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1),
        ),
      ),
      body: CenteredView(
        isMobile: false,
        child: Stack(
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/kadosh-logo.png',
                      ),
                      Text(
                        'MAKE DISCIPLES OF NATIONS...',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          height: 0.9,
                          fontSize: getResponsiveLargeFontSize(context),
                        ),
                      ),
                      verticalSpaceMedium,
                      Text(
                        'A group of friends, different origins, one destination - Kadosh.',
                        style: TextStyle(
                          fontSize: getResponsiveMediumFontSize(context),
                          height: 1.7,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
