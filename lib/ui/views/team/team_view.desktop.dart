import 'package:flutter/material.dart';
import 'package:kadosh_website/app/app.locator.dart';
import 'package:kadosh_website/app/app.router.dart';
import 'package:kadosh_website/extensions/hover_extensions.dart';
import 'package:kadosh_website/helpers/assets_constants.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/views/team/widgets/profile.dart';
import 'package:kadosh_website/ui/views/team/widgets/team_photo.dart';
import 'package:kadosh_website/ui/widgets/centered_view.dart';
import 'package:kadosh_website/ui/widgets/footer.dart';
import 'package:kadosh_website/ui/widgets/navigation_bar/nav_bar_item.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'team_viewmodel.dart';

class TeamViewDesktop extends ViewModelWidget<TeamViewModel> {
  const TeamViewDesktop({super.key});

  @override
  Widget build(BuildContext context, TeamViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () => locator<RouterService>().navigateToHomeView(),
          child: Image.asset('assets/kadosh-title.png'),
        ).moveOnHover(y: -5),
        actions: const [
          NavBarItem('Home'),
          horizontalSpaceLarge,
          NavBarItem('About'),
          horizontalSpaceLarge,
          NavBarItem('Team'),
          horizontalSpaceLarge,
          NavBarItem('Events'),
          horizontalSpaceMedium,
        ],
        automaticallyImplyLeading: false,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1),
        ),
      ),
      body: CenteredView(
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
              width: screenWidth(context) * 0.6,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: mediumSize),
                  child: Column(
                    children: [
                      verticalSpaceLarge,
                      // Text(
                      //   'In the beginning...',
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.w800,
                      //     height: 0.9,
                      //     fontSize: getResponsiveMediumFontSize(context),
                      //   ),
                      //   textAlign: TextAlign.center,
                      // ),
                      // verticalSpaceMedium,
                      // ClipRRect(
                      //   borderRadius: BorderRadius.circular(20.0),
                      //   child: Image.asset('assets/aires_sandra.jpg',
                      //       width: MediaQuery.of(context).size.width * 0.5),
                      // ),
                      // verticalSpaceMedium,
                      // Text(
                      //   'Aires & Sandra',
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.w800,
                      //     height: 0.9,
                      //     fontSize: getResponsiveMediumFontSize(context),
                      //   ),
                      //   textAlign: TextAlign.center,
                      // ),
                      // verticalSpaceMedium,
                      // Text(
                      //   'Some story text and explanation of kadosh~!',
                      //   style: TextStyle(
                      //     height: 1.0,
                      //     fontSize: getResponsiveSmallFontSize(context),
                      //   ),
                      //   textAlign: TextAlign.center,
                      // ),
                      // verticalSpaceLarge,
                      Text(
                        'Meet The Team',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          height: 0.9,
                          fontSize: getResponsiveMediumFontSize(context),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      verticalSpaceMedium,
                      const TeamPhoto(),
                      verticalSpaceMedium,
                      verticalSpaceSmall,
                      const Divider(),
                      verticalSpaceSmall,
                      ProfileWidget(
                        airesProfile,
                        airesProfileText,
                        isMirrored: false,
                        fontSize: getResponsiveSmallFontSize(context),
                      ),
                      verticalSpaceSmall,
                      const Divider(),
                      verticalSpaceSmall,
                      ProfileWidget(
                        sandraProfile,
                        sandraProfileText,
                        isMirrored: true,
                        fontSize: getResponsiveSmallFontSize(context),
                      ),
                      verticalSpaceSmall,
                      const Divider(),
                      verticalSpaceSmall,
                      ProfileWidget(
                        shandoProfile,
                        shandoProfileText,
                        isMirrored: false,
                        fontSize: getResponsiveSmallFontSize(context),
                      ),
                      verticalSpaceSmall,
                      const Divider(),
                      verticalSpaceSmall,
                      ProfileWidget(
                        savioProfile,
                        savioProfileText,
                        isMirrored: true,
                        fontSize: getResponsiveSmallFontSize(context),
                      ),
                      verticalSpaceSmall,
                      const Divider(),
                      verticalSpaceSmall,
                      ProfileWidget(
                        leonProfile,
                        leonProfileText,
                        isMirrored: false,
                        fontSize: getResponsiveSmallFontSize(context),
                      ),
                      verticalSpaceSmall,
                      const Divider(),
                      verticalSpaceSmall,
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
