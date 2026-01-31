import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';

class NavigationCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String description;
  final VoidCallback onTap;

  const NavigationCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  State<NavigationCard> createState() => _NavigationCardState();
}

class _NavigationCardState extends State<NavigationCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(mediumSize),
          decoration: BoxDecoration(
            color: kcCardBackground,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(_isHovered ? 0.12 : 0.08),
                blurRadius: _isHovered ? 15 : 10,
                offset: Offset(0, _isHovered ? 6 : 4),
              ),
            ],
            border: Border.all(
              color: _isHovered
                  ? kcPrimaryAccent.withOpacity(0.5)
                  : kcBorderColor.withOpacity(0.5),
              width: _isHovered ? 2 : 1,
            ),
          ),
          transform: _isHovered
              ? (Matrix4.identity()..translate(0.0, -4.0))
              : Matrix4.identity(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(smallSize * 1.5),
                decoration: BoxDecoration(
                  color: kcPrimaryAccent.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  widget.icon,
                  color: kcPrimaryAccent,
                  size: 32,
                ),
              ),
              verticalSpaceMedium,
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: kcTextPrimary,
                ),
                textAlign: TextAlign.center,
              ),
              verticalSpaceSmall,
              Text(
                widget.description,
                style: const TextStyle(
                  fontSize: 14,
                  color: kcTextSecondary,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
