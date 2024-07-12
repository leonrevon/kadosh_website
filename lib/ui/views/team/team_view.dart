import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'team_view.desktop.dart';
import 'team_view.tablet.dart';
import 'team_view.mobile.dart';
import 'team_viewmodel.dart';

class TeamView extends StackedView<TeamViewModel> {
  const TeamView({super.key});

  @override
  Widget builder(
    BuildContext context,
    TeamViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const TeamViewMobile(),
      tablet: (_) => const TeamViewTablet(),
      desktop: (_) => const TeamViewDesktop(),
    );
  }

  @override
  TeamViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TeamViewModel();
}
