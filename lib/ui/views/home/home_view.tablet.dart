import 'package:flutter/material.dart';
import 'package:kadosh_website/l10n/app_localizations.dart';
import 'package:kadosh_website/ui/common/kadosh_scaffold/kadosh_scaffold_page.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewTablet extends ViewModelWidget<HomeViewModel> {
  const HomeViewTablet({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return const KadoshScaffold(bodyContent: _HomePageTabletContent());
  }
}

class _HomePageTabletContent extends StatelessWidget {
  const _HomePageTabletContent();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Column(
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
                verticalSpaceMedium,
                Text(
                  l10n.homeTagline,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    height: 0.9,
                    fontSize: getResponsiveLargeFontSize(context),
                  ),
                  textAlign: TextAlign.center,
                ),
                verticalSpaceMedium,
                Text(
                  l10n.homeSubtitle,
                  style: TextStyle(
                    fontSize: getResponsiveLargeFontSize(context),
                    height: 1.7,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
