import 'package:flutter/material.dart';
import 'package:kadosh_website/l10n/app_localizations.dart';
import 'package:kadosh_website/helpers/assets_constants.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
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
    final fontSize = getResponsiveMediumFontSize(context) / 1.617;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: largeSize),
      child: Column(
        children: [
          const TeamPhoto(),
          verticalSpaceMedium,
          Text(
            l10n.teamTitle,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              height: 0.9,
              fontSize: getResponsiveMediumFontSize(context),
              color: kcTextPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpaceLarge,
          // Two-column grid
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ProfileWidget(
                    airesProfile,
                    l10n.airesProfileText,
                    fontSize: fontSize,
                  ),
                ),
                horizontalSpaceMedium,
                Expanded(
                  child: ProfileWidget(
                    sandraProfile,
                    l10n.sandraProfileText,
                    fontSize: fontSize,
                  ),
                ),
              ],
            ),
          ),
          verticalSpaceMedium,
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ProfileWidget(
                    shandoProfile,
                    l10n.shandoProfileText,
                    fontSize: fontSize,
                  ),
                ),
                horizontalSpaceMedium,
                Expanded(
                  child: ProfileWidget(
                    savioProfile,
                    l10n.savioProfileText,
                    fontSize: fontSize,
                  ),
                ),
              ],
            ),
          ),
          verticalSpaceMedium,
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ProfileWidget(
                    leonProfile,
                    l10n.leonProfileText,
                    fontSize: fontSize,
                  ),
                ),
                horizontalSpaceMedium,
                const Expanded(child: SizedBox()),
              ],
            ),
          ),
          verticalSpaceLarge,
        ],
      ),
    );
  }
}
