import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'events_view.desktop.dart';
import 'events_view.tablet.dart';
import 'events_view.mobile.dart';
import 'events_viewmodel.dart';

class EventsView extends StackedView<EventsViewModel> {
  const EventsView({super.key});

  @override
  Widget builder(
    BuildContext context,
    EventsViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const EventsViewMobile(),
      tablet: (_) => const EventsViewTablet(),
      desktop: (_) => const EventsViewDesktop(),
    );
  }

  @override
  EventsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EventsViewModel();
}
