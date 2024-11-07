import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/kadosh_scaffold/kadosh_scaffold_page.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return const KadoshScaffold(bodyContent: _HomePageContent());
  }
}

class _HomePageContent extends StatelessWidget {
  const _HomePageContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Image.asset(
              'assets/kadosh-logo.png',
            ),
            Text(
              'MAKE DISCIPLES OF ALL NATIONS',
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
    );
  }
}
