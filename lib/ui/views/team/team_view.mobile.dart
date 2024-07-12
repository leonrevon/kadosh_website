import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'team_viewmodel.dart';

class TeamViewMobile extends ViewModelWidget<TeamViewModel> {
  const TeamViewMobile({super.key});

  @override
  Widget build(BuildContext context, TeamViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, MOBILE UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
