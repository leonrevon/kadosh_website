import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/kadosh_scaffold/kadosh_scaffold_page.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'about_viewmodel.dart';

class AboutViewDesktop extends ViewModelWidget<AboutViewModel> {
  const AboutViewDesktop({super.key});

  @override
  Widget build(BuildContext context, AboutViewModel viewModel) {
    return const KadoshScaffold(
      bodyContent: _AboutViewContent(),
    );
  }
}

class _AboutViewContent extends StatelessWidget {
  const _AboutViewContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/community.png',
          height: getResponsiveHorizontalSpaceMedium(context),
        ),
        verticalSpaceLarge,
        Text(
          'As for me and my household,'.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.normal,
            height: 0.9,
            fontSize: getResponsiveLargeFontSize(context),
          ),
          textAlign: TextAlign.center,
        ),
        verticalSpaceMedium,
        Text(
          'we shall serve the Lord.'.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.normal,
            height: 0.9,
            fontSize: getResponsiveLargeFontSize(context),
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
            fontSize: getResponsiveMediumFontSize(context),
          ),
          textAlign: TextAlign.center,
        ),
        verticalSpaceLarge,
        Text(
          'Welcome to Kadosh. We are a dedicated Catholic spiritual community serving within the Archdiocese of Hamburg.               ',
          style: TextStyle(
            fontSize: getResponsiveSmallFontSize(context),
            height: 1.7,
          ),
          textAlign: TextAlign.justify,
        ),
        verticalSpaceLarge,
        Text(
          'Our vision is to make Jesus a living presence in the lives of individuals, leading to a faith-filled and vibrant Church. We dream of witnessing a generation of joyful disciples who wholeheartedly say "YES" to the call of Jesus, actively transforming themselves, the Church, and society. \n\n Our mission is to create welcoming and safe spaces where people can encounter God and deepen their relationship with Him. We are committed to nurturing and discipling young adults and families, helping them discover their true identity as beloved children of the Most High God. By embracing this identity, we empower them to live holy lives and become passionate followers of Jesus. Additionally, we seek to equip and shape these young leaders, sending them forth to fulfill God\'s plan for their lives and positively impact the world around them.',
          style: TextStyle(
            fontSize: getResponsiveSmallFontSize(context),
            height: 1.7,
          ),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
