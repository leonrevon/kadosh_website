import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/views/home/welcome_message.dart';
import 'package:kadosh_website/ui/widgets/centered_view.dart';
import 'package:kadosh_website/ui/widgets/navigation_bar/mobile_navigation_bar.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
        backgroundColor: kcPrimaryColor,
        body: CenteredView(
            isMobile: true,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const MobileNavigationBar(),
                  verticalSpaceMedium,
                  Column(
                    children: [
                      const WelcomeMessage(),
                      verticalSpaceSmall,
                      Image.asset(
                        'assets/team.jpg',
                        width: screenWidth(context) - tinySize,
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
