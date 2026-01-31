import 'package:flutter/material.dart';
import 'package:kadosh_website/l10n/app_localizations.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/kadosh_scaffold/kadosh_scaffold_page.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/content_card.dart';
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

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: largeSize),
      child: Column(
        children: [
          // Bible Verse Card
          ContentCard(
            child: Column(
              children: [
                Icon(
                  Icons.format_quote,
                  size: 40,
                  color: kcPrimaryAccent.withOpacity(0.6),
                ),
                verticalSpaceMedium,
                Text(
                  l10n.aboutVersePart1.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    height: 1.5,
                    fontSize: getResponsiveMediumFontSize(context),
                    color: kcTextPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  l10n.aboutVersePart2.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    height: 1.5,
                    fontSize: getResponsiveMediumFontSize(context),
                    color: kcTextPrimary,
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
                    fontSize: getResponsiveSmallFontSize(context),
                    color: kcTextSecondary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          verticalSpaceMedium,
          // Welcome Card
          ContentCard(
            icon: Icons.waving_hand_outlined,
            title: 'Welcome',
            child: Text(
              l10n.aboutWelcome,
              style: TextStyle(
                fontSize: getResponsiveMediumFontSize(context) / 1.617,
                height: 1.7,
                color: kcTextPrimary,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          verticalSpaceMedium,
          // Vision and Mission in Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ContentCard(
                  icon: Icons.visibility_outlined,
                  title: l10n.aboutVision,
                  child: Text(
                    l10n.aboutVisionText,
                    style: TextStyle(
                      fontSize: getResponsiveMediumFontSize(context) / 1.617,
                      height: 1.7,
                      color: kcTextPrimary,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              horizontalSpaceMedium,
              Expanded(
                child: ContentCard(
                  icon: Icons.flag_outlined,
                  title: l10n.aboutMission,
                  child: Text(
                    l10n.aboutMissionText,
                    style: TextStyle(
                      fontSize: getResponsiveMediumFontSize(context) / 1.617,
                      height: 1.7,
                      color: kcTextPrimary,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
          verticalSpaceLarge,
        ],
      ),
    );
  }
}
