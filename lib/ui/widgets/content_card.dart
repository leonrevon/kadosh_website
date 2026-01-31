import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';

class ContentCard extends StatelessWidget {
  final Widget child;
  final IconData? icon;
  final String? title;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;

  const ContentCard({
    super.key,
    required this.child,
    this.icon,
    this.title,
    this.padding,
    this.borderRadius = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kcCardBackground,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(
          color: kcBorderColor.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(mediumSize),
        child: icon != null || title != null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (icon != null || title != null)
                    Row(
                      children: [
                        if (icon != null) ...[
                          Icon(
                            icon,
                            color: kcPrimaryAccent,
                            size: 24,
                          ),
                          horizontalSpaceSmall,
                        ],
                        if (title != null)
                          Text(
                            title!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: kcTextPrimary,
                            ),
                          ),
                      ],
                    ),
                  if (icon != null || title != null) verticalSpaceMedium,
                  child,
                ],
              )
            : child,
      ),
    );
  }
}
