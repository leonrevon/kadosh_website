import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/kadosh_scaffold/kadosh_scaffold_mobile_page.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return const KadoshScaffoldMobile(bodyContent: _HomePageMobileContent());
  }
}

class _HomePageMobileContent extends StatelessWidget {
  const _HomePageMobileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              'MAKE DISCIPLES OF ALL NATIONS',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                height: 0.9,
                fontSize: getResponsiveExtraLargeFontSize(context),
              ),
              textAlign: TextAlign.center,
            ),
            verticalSpaceSmall,
            Text(
              'A group of friends, different origins, one destination - Kadosh.',
              style: TextStyle(
                fontSize: getResponsiveExtraLargeFontSize(context),
                height: 1.7,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
