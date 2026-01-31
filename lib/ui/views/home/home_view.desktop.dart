import 'package:flutter/material.dart';
import 'package:kadosh_website/app/app.locator.dart';
import 'package:kadosh_website/app/app.router.dart';
import 'package:kadosh_website/l10n/app_localizations.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/kadosh_scaffold/kadosh_scaffold_page.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/navigation_card.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return const KadoshScaffold(bodyContent: _HomePageContent());
  }
}

class _HomePageContent extends StatelessWidget {
  const _HomePageContent();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final router = locator<RouterService>();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: largeSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/kadosh-logo.png',
          ),
          Text(
            l10n.homeTagline,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              height: 0.9,
              fontSize: getResponsiveLargeFontSize(context),
              color: kcTextPrimary,
            ),
          ),
          verticalSpaceMedium,
          Text(
            l10n.homeSubtitle,
            style: TextStyle(
              fontSize: getResponsiveMediumFontSize(context),
              height: 1.7,
              color: kcTextSecondary,
            ),
          ),
          verticalSpaceLarge,
          verticalSpaceMedium,
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: NavigationCard(
                    icon: Icons.info_outline,
                    title: l10n.homeAboutCard,
                    description: l10n.homeAboutCardDesc,
                    onTap: () => router.navigateToAboutView(),
                  ),
                ),
                horizontalSpaceMedium,
                Expanded(
                  child: NavigationCard(
                    icon: Icons.people_outline,
                    title: l10n.homeTeamCard,
                    description: l10n.homeTeamCardDesc,
                    onTap: () => router.navigateToTeamView(),
                  ),
                ),
                horizontalSpaceMedium,
                Expanded(
                  child: NavigationCard(
                    icon: Icons.event_outlined,
                    title: l10n.homeEventsCard,
                    description: l10n.homeEventsCardDesc,
                    onTap: () => router.navigateToEventsView(),
                  ),
                ),
              ],
            ),
          ),
          verticalSpaceLarge,
        ],
      ),
    );
  }
}
