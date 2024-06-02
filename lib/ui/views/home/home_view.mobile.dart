import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/centered_view.dart';
import 'package:kadosh_website/ui/widgets/navigation_bar/mobile_navigation_bar.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
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
                          verticalSpaceLarge,
                          const Text(
                            'MAKE DISCIPLES OF NATIONS...',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              height: 0.9,
                              fontSize: 30.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          verticalSpaceSmall,
                          const Text(
                            'A group of friends, different origins, one destination - Kadosh.',
                            style: TextStyle(
                              fontSize: 18,
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
            const Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 63,
                child: ColoredBox(
                  color: kcPrimaryColor,
                  child: Column(
                    children: [
                      MobileNavigationBar(),
                      Divider(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
