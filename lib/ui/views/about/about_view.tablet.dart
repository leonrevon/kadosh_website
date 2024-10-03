import 'package:flutter/material.dart';
import 'package:kadosh_website/app/app.locator.dart';
import 'package:kadosh_website/app/app.router.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/centered_view.dart';
import 'package:kadosh_website/ui/widgets/footer.dart';
import 'package:kadosh_website/ui/widgets/navigation_bar/nav_bar_item.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'about_viewmodel.dart';

class AboutViewTablet extends ViewModelWidget<AboutViewModel> {
  const AboutViewTablet({super.key});

  @override
  Widget build(BuildContext context, AboutViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () => locator<RouterService>().navigateToHomeView(),
          child: Image.asset('assets/kadosh-title.png'),
        ),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/community.png',
                          height: getResponsiveHorizontalSpaceMedium(context),
                        ),
                        verticalSpaceMedium,
                        Text(
                          'As for me and my household,'.toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            height: 0.9,
                            fontSize: getResponsiveLargeFontSize(context),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        verticalSpaceMedium,
                        Text(
                          'we shall serve the Lord.'.toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            height: 0.9,
                            fontSize: getResponsiveLargeFontSize(context),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        verticalSpaceMedium,
                        Text(
                          '(Joshua 24:15)',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic,
                            height: 0.9,
                            fontSize: getResponsiveMediumFontSize(context),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        verticalSpaceLarge,
                        Text(
                          'Our vision is to make Jesus a living presence in the lives of individuals, leading to a faith-filled and vibrant Church. We dream of witnessing a generation of joyful disciples who wholeheartedly say "YES" to the call of Jesus, actively transforming themselves, the Church, and society. \n\n Our mission is to create welcoming and prayerful spaces where people can encounter God and deepen their relationship with Him. We are committed to nurturing and discipling young adults and families, helping them discover their true identity as beloved children of the Most High God. By embracing this identity, we empower them to live holy lives and become passionate followers of Jesus. Additionally, we seek to equip and shape these young leaders, sending them forth to fulfill God\'s plan for their lives and positively impact the world around them.',
                          style: TextStyle(
                            fontSize: getResponsiveMediumFontSize(context),
                            height: 1.7,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ],
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
