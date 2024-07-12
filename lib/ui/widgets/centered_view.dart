import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: smallSize, vertical: smallSize),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: screenWidth(context)),
        child: child,
      ),
    );
  }
}
