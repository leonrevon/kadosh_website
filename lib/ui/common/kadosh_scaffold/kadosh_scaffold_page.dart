import 'package:flutter/material.dart';
import 'package:kadosh_website/app/app.locator.dart';
import 'package:kadosh_website/app/app.router.dart';
import 'package:kadosh_website/extensions/hover_extensions.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/centered_view.dart';
import 'package:kadosh_website/ui/widgets/footer.dart';
import 'package:kadosh_website/ui/widgets/navigation_bar/nav_bar_item.dart';
import 'package:stacked_services/stacked_services.dart';

class KadoshScaffold extends StatelessWidget {
  const KadoshScaffold({super.key, required this.bodyContent});

  final Widget bodyContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () => locator<RouterService>().navigateToHomeView(),
          child: Image.asset('assets/kadosh-title.png'),
        ).moveOnHover(y: -5),
        actions: const [
          NavBarItem('Home'),
          horizontalSpaceLarge,
          NavBarItem('About'),
          horizontalSpaceLarge,
          NavBarItem('Team'),
          horizontalSpaceLarge,
          NavBarItem('Events'),
          horizontalSpaceMedium,
        ],
        automaticallyImplyLeading: false,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1),
        ),
      ),
      body: CenteredView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.2,
              child: Container(
                color: Colors.deepOrangeAccent,
                width: screenWidth(context),
                height: screenHeight(context),
              ),
            ),
            SizedBox(
              width: screenWidth(context) * 4 / 5,
              child: SingleChildScrollView(child: bodyContent),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
