import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/centered_view.dart';
import 'package:kadosh_website/ui/widgets/navigation_bar/web_navigation_bar.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewTablet extends ViewModelWidget<HomeViewModel> {
  const HomeViewTablet({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: CenteredView(
        isMobile: false,
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  WebNavigationBar(
                    isTablet: true,
                  ),
                  Divider(),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.center,
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
                      Column(
                        children: [
                          Image.asset(
                            'assets/kadosh-logo.png',
                          ),
                          verticalSpaceLarge,
                          const Text(
                            'MAKE DISCIPLE OF NATION...',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              height: 0.9,
                              fontSize: 40.0,
                            ),
                          ),
                          verticalSpaceMedium,
                          const Text(
                            'A group of friends, different origins, one destination - Kadosh.',
                            style: TextStyle(
                              fontSize: 21,
                              height: 1.7,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
