import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/kadosh_scaffold/kadosh_scaffold_mobile_page.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'about_viewmodel.dart';

class AboutViewMobile extends ViewModelWidget<AboutViewModel> {
  const AboutViewMobile({super.key});

  @override
  Widget build(BuildContext context, AboutViewModel viewModel) {
    return const KadoshScaffoldMobile(
      bodyContent: _AboutViewMobileContent(),
    );
  }
}

class _AboutViewMobileContent extends StatelessWidget {
  const _AboutViewMobileContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: largeSize),
      child: Column(
        children: [
          Image.asset(
            'assets/community.png',
            height: getResponsiveHorizontalSpaceMedium(context),
          ),
          verticalSpaceMedium,
          Text(
            'As for me and my household, \n we shall serve the lord'
                .toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.normal,
              height: 2,
              fontSize: getResponsiveMassiveFontSize(context),
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpaceMedium,
          Text(
            '(Joshua 24:15)',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic,
              height: 0.9,
              fontSize: getResponsiveLargeFontSize(context),
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpaceLarge,
          Text(
            'Our vision is to make Jesus a living presence in the lives of individuals, leading to a faith-filled and vibrant Church. We dream of witnessing a generation of joyful disciples who wholeheartedly say "YES" to the call of Jesus, actively transforming themselves, the Church, and society. \n\n Our mission is to create welcoming and prayerful spaces where people can encounter God and deepen their relationship with Him. We are committed to nurturing and discipling young adults and families, helping them discover their true identity as beloved children of the Most High God. By embracing this identity, we empower them to live holy lives and become passionate followers of Jesus. Additionally, we seek to equip and shape these young leaders, sending them forth to fulfill God\'s plan for their lives and positively impact the world around them.',
            style: TextStyle(
              fontSize: getResponsiveMassiveFontSize(context) / 1.617,
              height: 1.7,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
