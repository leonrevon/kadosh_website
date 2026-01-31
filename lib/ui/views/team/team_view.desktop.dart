import 'package:flutter/material.dart';
import 'package:kadosh_website/l10n/app_localizations.dart';
import 'package:kadosh_website/helpers/assets_constants.dart';
import 'package:kadosh_website/ui/common/kadosh_scaffold/kadosh_scaffold_page.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/views/team/widgets/profile.dart';
import 'package:kadosh_website/ui/views/team/widgets/team_photo.dart';
import 'package:stacked/stacked.dart';

import 'team_viewmodel.dart';

class TeamViewDesktop extends ViewModelWidget<TeamViewModel> {
  const TeamViewDesktop({super.key});

  @override
  Widget build(BuildContext context, TeamViewModel viewModel) {
    return const KadoshScaffold(bodyContent: _TeamViewDesktopBodyContent());
  }
}

class _TeamViewDesktopBodyContent extends StatelessWidget {
  const _TeamViewDesktopBodyContent();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: mediumSize),
      child: Column(
        children: [
          verticalSpaceLarge,
          const TeamPhoto(),
          verticalSpaceMedium,
          Text(
            l10n.teamTitle,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              height: 0.9,
              fontSize: getResponsiveMediumFontSize(context),
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpaceSmall,
          const Divider(),
          verticalSpaceSmall,
          ProfileWidget(
            airesProfile,
            l10n.airesProfileText,
            isMirrored: false,
            fontSize: getResponsiveMediumFontSize(context) / 1.617,
          ),
          verticalSpaceSmall,
          const Divider(),
          verticalSpaceSmall,
          ProfileWidget(
            sandraProfile,
            l10n.sandraProfileText,
            isMirrored: true,
            fontSize: getResponsiveMediumFontSize(context) / 1.617,
          ),
          verticalSpaceSmall,
          const Divider(),
          verticalSpaceSmall,
          ProfileWidget(
            shandoProfile,
            l10n.shandoProfileText,
            isMirrored: false,
            fontSize: getResponsiveMediumFontSize(context) / 1.617,
          ),
          verticalSpaceSmall,
          const Divider(),
          verticalSpaceSmall,
          ProfileWidget(
            savioProfile,
            l10n.savioProfileText,
            isMirrored: true,
            fontSize: getResponsiveMediumFontSize(context) / 1.617,
          ),
          verticalSpaceSmall,
          const Divider(),
          verticalSpaceSmall,
          ProfileWidget(
            leonProfile,
            l10n.leonProfileText,
            isMirrored: false,
            fontSize: getResponsiveMediumFontSize(context) / 1.617,
          ),
          verticalSpaceSmall,
          const Divider(),
          verticalSpaceSmall,
        ],
      ),
    );
  }
}
