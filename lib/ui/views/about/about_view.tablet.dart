import 'package:flutter/material.dart';
import 'package:kadosh_website/l10n/app_localizations.dart';
import 'package:kadosh_website/ui/common/kadosh_scaffold/kadosh_scaffold_page.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'about_viewmodel.dart';

class AboutViewTablet extends ViewModelWidget<AboutViewModel> {
  const AboutViewTablet({super.key});

  @override
  Widget build(BuildContext context, AboutViewModel viewModel) {
    return const KadoshScaffold(
      bodyContent: _AboutViewTabletContent(),
    );
  }
}

class _AboutViewTabletContent extends StatelessWidget {
  const _AboutViewTabletContent();

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
              'assets/community.png',
              height: getResponsiveHorizontalSpaceMedium(context),
            ),
            verticalSpaceMedium,
            Text(
              l10n.aboutVerseMobile.toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.normal,
                height: 2,
                fontSize: getResponsiveLargeFontSize(context),
              ),
              textAlign: TextAlign.center,
            ),
            verticalSpaceMedium,
            Text(
              l10n.aboutVerseReference,
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
              l10n.aboutVisionMissionMobile,
              style: TextStyle(
                fontSize: getResponsiveLargeFontSize(context) / 1.617,
                height: 1.7,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ],
    );
  }
}
