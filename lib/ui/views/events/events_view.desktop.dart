import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'events_viewmodel.dart';

class EventsViewDesktop extends ViewModelWidget<EventsViewModel> {
  const EventsViewDesktop({super.key});

  @override
  Widget build(BuildContext context, EventsViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, DESKTOP UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
