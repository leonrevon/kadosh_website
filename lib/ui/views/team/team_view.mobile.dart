import 'package:flutter/material.dart';
import 'package:kadosh_website/l10n/app_localizations.dart';
import 'package:kadosh_website/helpers/assets_constants.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/views/team/widgets/profile.dart';
import 'package:kadosh_website/ui/views/team/widgets/team_photo.dart';
import 'package:stacked/stacked.dart';

import '../../common/kadosh_scaffold/kadosh_scaffold_mobile_page.dart';
import 'team_viewmodel.dart';

class TeamViewMobile extends ViewModelWidget<TeamViewModel> {
  const TeamViewMobile({super.key});

  @override
  Widget build(BuildContext context, TeamViewModel viewModel) {
    return const KadoshScaffoldMobile(bodyContent: _TeamViewMobileContent());
  }
}

class _TeamViewMobileContent extends StatelessWidget {
  const _TeamViewMobileContent();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final fontSize = getResponsiveExtraLargeFontSize(context) / 1.8;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: mediumSize),
      child: Column(
        children: [
          const TeamPhoto(),
          verticalSpaceMedium,
          Text(
            l10n.teamTitle,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              height: 0.9,
              fontSize: getResponsiveExtraLargeFontSize(context),
              color: kcTextPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpaceMedium,
          ProfileWidget(
            airesProfile,
            l10n.airesProfileText,
            fontSize: fontSize,
            isCompact: true,
          ),
          verticalSpaceMedium,
          ProfileWidget(
            sandraProfile,
            l10n.sandraProfileText,
            fontSize: fontSize,
            isCompact: true,
          ),
          verticalSpaceMedium,
          ProfileWidget(
            shandoProfile,
            l10n.shandoProfileText,
            fontSize: fontSize,
            isCompact: true,
          ),
          verticalSpaceMedium,
          ProfileWidget(
            savioProfile,
            l10n.savioProfileText,
            fontSize: fontSize,
            isCompact: true,
          ),
          verticalSpaceMedium,
          ProfileWidget(
            leonProfile,
            l10n.leonProfileText,
            fontSize: fontSize,
            isCompact: true,
          ),
          verticalSpaceLarge,
        ],
      ),
    );
  }
}
