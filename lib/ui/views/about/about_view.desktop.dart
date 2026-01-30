import 'package:flutter/material.dart';
import 'package:kadosh_website/l10n/app_localizations.dart';
import 'package:kadosh_website/ui/common/kadosh_scaffold/kadosh_scaffold_page.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'about_viewmodel.dart';

class AboutViewDesktop extends ViewModelWidget<AboutViewModel> {
  const AboutViewDesktop({super.key});

  @override
  Widget build(BuildContext context, AboutViewModel viewModel) {
    return const KadoshScaffold(
      bodyContent: _AboutViewContent(),
    );
  }
}

class _AboutViewContent extends StatelessWidget {
  const _AboutViewContent();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Column(
      children: [
        Image.asset(
          'assets/community.png',
          height: getResponsiveHorizontalSpaceMedium(context),
        ),
        verticalSpaceLarge,
        Text(
          l10n.aboutVersePart1.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.normal,
            height: 0.9,
            fontSize: getResponsiveMediumFontSize(context),
          ),
          textAlign: TextAlign.center,
        ),
        verticalSpaceMedium,
        Text(
          l10n.aboutVersePart2.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.normal,
            height: 0.9,
            fontSize: getResponsiveMediumFontSize(context),
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
          l10n.aboutWelcome,
          style: TextStyle(
            fontSize: getResponsiveMediumFontSize(context) / 1.617,
            height: 1.7,
          ),
          textAlign: TextAlign.justify,
        ),
        verticalSpaceLarge,
        Text(
          l10n.aboutVisionMission,
          style: TextStyle(
            fontSize: getResponsiveMediumFontSize(context) / 1.617,
            height: 1.7,
          ),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
