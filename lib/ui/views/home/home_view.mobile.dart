import 'package:flutter/material.dart';
import 'package:kadosh_website/app/app.locator.dart';
import 'package:kadosh_website/app/app.router.dart';
import 'package:kadosh_website/l10n/app_localizations.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/kadosh_scaffold/kadosh_scaffold_mobile_page.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/navigation_card.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return const KadoshScaffoldMobile(bodyContent: _HomePageMobileContent());
  }
}

class _HomePageMobileContent extends StatelessWidget {
  const _HomePageMobileContent();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final router = locator<RouterService>();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: mediumSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/kadosh-logo.png',
          ),
          verticalSpaceMedium,
          Text(
            l10n.homeTagline,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              height: 0.9,
              fontSize: getResponsiveExtraLargeFontSize(context),
              color: kcTextPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpaceSmall,
          Text(
            l10n.homeSubtitle,
            style: TextStyle(
              fontSize: getResponsiveExtraLargeFontSize(context),
              height: 1.7,
              color: kcTextSecondary,
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpaceLarge,
          SizedBox(
            width: double.infinity,
            child: NavigationCard(
              icon: Icons.info_outline,
              title: l10n.homeAboutCard,
              description: l10n.homeAboutCardDesc,
              onTap: () => router.navigateToAboutView(),
            ),
          ),
          verticalSpaceMedium,
          SizedBox(
            width: double.infinity,
            child: NavigationCard(
              icon: Icons.people_outline,
              title: l10n.homeTeamCard,
              description: l10n.homeTeamCardDesc,
              onTap: () => router.navigateToTeamView(),
            ),
          ),
          verticalSpaceMedium,
          SizedBox(
            width: double.infinity,
            child: NavigationCard(
              icon: Icons.event_outlined,
              title: l10n.homeEventsCard,
              description: l10n.homeEventsCardDesc,
              onTap: () => router.navigateToEventsView(),
            ),
          ),
          verticalSpaceLarge,
        ],
      ),
    );
  }
}
