import 'package:flutter/material.dart';
import 'package:kadosh_website/app/app.locator.dart';
import 'package:kadosh_website/app/app.router.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/centered_view.dart';
import 'package:kadosh_website/ui/widgets/footer.dart';
import 'package:kadosh_website/ui/widgets/navigation_bar/mobile_drawer_navigation.dart';
import 'package:stacked_services/stacked_services.dart';

class KadoshScaffoldMobile extends StatelessWidget {
  const KadoshScaffoldMobile({super.key, required this.bodyContent});

  final Widget bodyContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcPrimaryBackground,
      drawer: const MobileDrawer(),
      appBar: AppBar(
        backgroundColor: kcCardBackground,
        elevation: 0,
        iconTheme: const IconThemeData(color: kcTextPrimary),
        title: GestureDetector(
          onTap: () => locator<RouterService>().navigateToHomeView(),
          child: Image.asset('assets/kadosh-title.png'),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            height: 1,
            decoration: BoxDecoration(
              color: kcBorderColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SelectionArea(
        child: CenteredView(
          child: Container(
            color: kcPrimaryBackground,
            width: screenWidth(context),
            height: screenHeight(context),
            child: Center(
              child: SizedBox(
                width: screenWidth(context) * 4 / 5,
                child: SingleChildScrollView(
                  child: bodyContent,
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
