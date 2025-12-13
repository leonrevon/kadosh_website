import 'package:flutter/material.dart';
import 'package:kadosh_website/helpers/assets_constants.dart';
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
  const _TeamViewMobileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: mediumSize),
      child: Column(
        children: [
          const TeamPhoto(),
          verticalSpaceMedium,
          Text(
            'Meet The Team',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              height: 0.9,
              fontSize: getResponsiveExtraLargeFontSize(context),
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
            fontSize: getResponsiveExtraLargeFontSize(context) / 1.617,
          ),
          verticalSpaceSmall,
          const Divider(),
          verticalSpaceSmall,
          ProfileWidget(
            sandraProfile,
            sandraProfileText,
            isMirrored: true,
            fontSize: getResponsiveExtraLargeFontSize(context) / 1.617,
          ),
          verticalSpaceSmall,
          const Divider(),
          verticalSpaceSmall,
          ProfileWidget(
            shandoProfile,
            shandoProfileText,
            isMirrored: false,
            fontSize: getResponsiveExtraLargeFontSize(context) / 1.617,
          ),
          verticalSpaceSmall,
          const Divider(),
          verticalSpaceSmall,
          ProfileWidget(
            savioProfile,
            savioProfileText,
            isMirrored: true,
            fontSize: getResponsiveExtraLargeFontSize(context) / 1.617,
          ),
          verticalSpaceSmall,
          const Divider(),
          verticalSpaceSmall,
          ProfileWidget(
            leonProfile,
            leonProfileText,
            isMirrored: false,
            fontSize: getResponsiveExtraLargeFontSize(context) / 1.617,
          ),
          verticalSpaceSmall,
          const Divider(),
        ],
      ),
    );
  }
}
