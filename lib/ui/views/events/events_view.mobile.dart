import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/kadosh_scaffold/kadosh_scaffold_mobile_page.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'events_viewmodel.dart';

class EventsViewMobile extends ViewModelWidget<EventsViewModel> {
  const EventsViewMobile({super.key});

  @override
  Widget build(BuildContext context, EventsViewModel viewModel) {
    return KadoshScaffoldMobile(
      bodyContent: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/first_friday_poster/november.jpg',
              height: screenWidthFraction(context),
            ),
          ],
        ),
      ),
    );
  }
}
