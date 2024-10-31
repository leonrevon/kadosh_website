import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/kadosh_scaffold/kadosh_scaffold_page.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'events_viewmodel.dart';

class EventsViewDesktop extends ViewModelWidget<EventsViewModel> {
  const EventsViewDesktop({super.key});

  @override
  Widget build(BuildContext context, EventsViewModel viewModel) {
    return KadoshScaffold(
      bodyContent: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: mediumSize),
              child: Image.asset(
                'assets/first_friday_poster/november.jp',
                height: getResponsiveHorizontalSpaceLarge(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
