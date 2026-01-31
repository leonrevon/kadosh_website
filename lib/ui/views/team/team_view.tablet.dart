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

class TeamViewTablet extends ViewModelWidget<TeamViewModel> {
  const TeamViewTablet({super.key});

  @override
  Widget build(BuildContext context, TeamViewModel viewModel) {
    return const KadoshScaffold(bodyContent: _TeamViewBodyContent());
  }
}

class _TeamViewBodyContent extends StatelessWidget {
  const _TeamViewBodyContent();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final fontSize = getResponsiveExtraLargeFontSize(context) / 1.8;

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
              fontSize: getResponsiveExtraLargeFontSize(context),
              color: kcTextPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpaceLarge,
          // Two-column grid for tablet
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
          verticalSpaceMedium,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
          verticalSpaceMedium,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
          verticalSpaceLarge,
        ],
      ),
    );
  }
}
