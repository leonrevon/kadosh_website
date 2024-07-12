import 'package:flutter/material.dart';
import 'package:kadosh_website/app/app.locator.dart';
import 'package:kadosh_website/app/app.router.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/centered_view.dart';
import 'package:kadosh_website/ui/widgets/footer.dart';
import 'package:kadosh_website/ui/widgets/navigation_bar/mobile_drawer_navigation.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'team_viewmodel.dart';

class TeamViewMobile extends ViewModelWidget<TeamViewModel> {
  const TeamViewMobile({super.key});

  @override
  Widget build(BuildContext context, TeamViewModel viewModel) {
    return Scaffold(
      drawer: const MobileDrawer(),
      appBar: AppBar(
        title: GestureDetector(
          onTap: () => locator<RouterService>().navigateToHomeView(),
          child: Image.asset('assets/kadosh-title.png'),
        ),
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
            SizedBox(
              width: screenWidth(context) * 4 / 5,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: largeSize),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25.0),
                        child: Image.asset('assets/team.jpg',
                            width: MediaQuery.of(context).size.width * 0.9),
                      ),
                      verticalSpaceMedium,
                      Text(
                        'Meet The Team',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          height: 0.9,
                          fontSize: getResponsiveExtraLargeFontSize(context),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      verticalSpaceMedium,
                      Text(
                        'Team-Text',
                        style: TextStyle(
                          fontSize: getResponsiveLargeFontSize(context),
                          height: 1.7,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
