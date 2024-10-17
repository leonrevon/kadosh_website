import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'events_viewmodel.dart';

class EventsViewMobile extends ViewModelWidget<EventsViewModel> {
  const EventsViewMobile({super.key});

  @override
  Widget build(BuildContext context, EventsViewModel viewModel) {
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
