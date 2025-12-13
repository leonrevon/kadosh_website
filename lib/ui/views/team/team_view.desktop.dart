import 'package:flutter/material.dart';
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
  const _TeamViewDesktopBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: mediumSize),
      child: Column(
        children: [
          verticalSpaceLarge,
          const TeamPhoto(),
          verticalSpaceMedium,
          Text(
            'Meet The Team',
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
            airesProfileText,
            isMirrored: false,
            fontSize: getResponsiveMediumFontSize(context) / 1.617,
          ),
          verticalSpaceSmall,
          const Divider(),
          verticalSpaceSmall,
          ProfileWidget(
            sandraProfile,
            sandraProfileText,
            isMirrored: true,
            fontSize: getResponsiveMediumFontSize(context) / 1.617,
          ),
          verticalSpaceSmall,
          const Divider(),
          verticalSpaceSmall,
          ProfileWidget(
            shandoProfile,
            shandoProfileText,
            isMirrored: false,
            fontSize: getResponsiveMediumFontSize(context) / 1.617,
          ),
          verticalSpaceSmall,
          const Divider(),
          verticalSpaceSmall,
          ProfileWidget(
            savioProfile,
            savioProfileText,
            isMirrored: true,
            fontSize: getResponsiveMediumFontSize(context) / 1.617,
          ),
          verticalSpaceSmall,
          const Divider(),
          verticalSpaceSmall,
          ProfileWidget(
            leonProfile,
            leonProfileText,
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
