import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/views/home/welcome_message.dart';
import 'package:kadosh_website/ui/widgets/centered_view.dart';
import 'package:kadosh_website/ui/widgets/navigation_bar/web_navigation_bar.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewTablet extends ViewModelWidget<HomeViewModel> {
  const HomeViewTablet({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
        backgroundColor: kcPrimaryColor,
        body: CenteredView(
            isMobile: false,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const WebNavigationBar(
                    isTablet: false,
                  ),
                  verticalSpaceMedium,
                  Padding(
                    padding: const EdgeInsets.only(
                        left: largeSize, right: largeSize),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: screenWidth(context),
                          child: const WelcomeMessage(),
                        ),
                        verticalSpaceSmall,
                        Image.asset(
                          'assets/team.jpg',
                          width: screenWidth(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
