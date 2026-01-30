import 'package:flutter/material.dart';
import 'package:kadosh_website/l10n/app_localizations.dart';
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
    final l10n = AppLocalizations.of(context)!;

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
              l10n.homeTagline,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                height: 0.9,
                fontSize: getResponsiveLargeFontSize(context),
              ),
            ),
            verticalSpaceMedium,
            Text(
              l10n.homeSubtitle,
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
