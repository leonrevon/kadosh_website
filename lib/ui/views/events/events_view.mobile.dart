import 'package:flutter/material.dart';
import 'package:kadosh_website/l10n/app_localizations.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/kadosh_scaffold/kadosh_scaffold_mobile_page.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/content_card.dart';
import 'package:stacked/stacked.dart';

import 'events_viewmodel.dart';

class EventsViewMobile extends ViewModelWidget<EventsViewModel> {
  const EventsViewMobile({super.key});

  @override
  Widget build(BuildContext context, EventsViewModel viewModel) {
    final l10n = AppLocalizations.of(context)!;

    return KadoshScaffoldMobile(
      bodyContent: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: mediumSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContentCard(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(mediumSize),
                      decoration: BoxDecoration(
                        color: kcSecondaryAccent.withValues(alpha: 0.2),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.construction_outlined,
                        size: 48,
                        color: kcPrimaryAccent,
                      ),
                    ),
                    verticalSpaceMedium,
                    Text(
                      l10n.eventsTitle,
                      style: TextStyle(
                        fontSize: getResponsiveExtraLargeFontSize(context),
                        fontWeight: FontWeight.w700,
                        color: kcTextPrimary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    verticalSpaceMedium,
                    Text(
                      l10n.eventsWorkInProgress,
                      style: TextStyle(
                        fontSize: getResponsiveLargeFontSize(context) / 1.5,
                        color: kcTextSecondary,
                        height: 1.6,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    verticalSpaceMedium,
                    Text(
                      l10n.eventsComingSoon,
                      style: TextStyle(
                        fontSize: getResponsiveLargeFontSize(context) / 1.5,
                        fontStyle: FontStyle.italic,
                        color: kcPrimaryAccent,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
