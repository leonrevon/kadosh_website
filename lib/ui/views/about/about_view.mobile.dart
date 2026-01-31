import 'package:flutter/material.dart';
import 'package:kadosh_website/l10n/app_localizations.dart';
import 'package:kadosh_website/ui/common/kadosh_scaffold/kadosh_scaffold_mobile_page.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'about_viewmodel.dart';

class AboutViewMobile extends ViewModelWidget<AboutViewModel> {
  const AboutViewMobile({super.key});

  @override
  Widget build(BuildContext context, AboutViewModel viewModel) {
    return const KadoshScaffoldMobile(
      bodyContent: _AboutViewMobileContent(),
    );
  }
}

class _AboutViewMobileContent extends StatelessWidget {
  const _AboutViewMobileContent();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: largeSize),
      child: Column(
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
              fontSize: getResponsiveMassiveFontSize(context),
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
              fontSize: getResponsiveLargeFontSize(context),
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpaceLarge,
          Text(
            l10n.aboutVisionMissionMobile,
            style: TextStyle(
              fontSize: getResponsiveMassiveFontSize(context) / 1.617,
              height: 1.7,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
