import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  final bool isMobile;
  const CenteredView({super.key, required this.child, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: isMobile ? largeSize : smallSize, vertical: smallSize),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1000),
        child: child,
      ),
    );
  }
}
