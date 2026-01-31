import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';

class ProfileWidget extends StatelessWidget {
  final String nameProfile;
  final String profileText;
  final String name;
  final double fontSize;
  final bool isCompact;

  const ProfileWidget(
    this.nameProfile,
    this.profileText, {
    super.key,
    required this.fontSize,
    this.name = '',
    this.isCompact = false,
  });

  @override
  Widget build(BuildContext context) {
    final double photoSize = isCompact ? 60.0 : 80.0;

    return Container(
      decoration: BoxDecoration(
        color: kcCardBackground,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(
          color: kcBorderColor.withValues(alpha: 0.5),
          width: 1,
        ),
      ),
      padding: EdgeInsets.all(isCompact ? smallSize * 2 : mediumSize),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: kcPrimaryAccent.withValues(alpha: 0.3),
                width: 3,
              ),
              boxShadow: [
                BoxShadow(
                  color: kcPrimaryAccent.withValues(alpha: 0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: CircleAvatar(
              radius: photoSize,
              backgroundImage: AssetImage(nameProfile),
              backgroundColor: kcBorderColor,
            ),
          ),
          SizedBox(width: isCompact ? smallSize * 2 : mediumSize),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (name.isNotEmpty) ...[
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: fontSize * 1.2,
                      fontWeight: FontWeight.w700,
                      color: kcTextPrimary,
                    ),
                  ),
                  verticalSpaceSmall,
                ],
                Text(
                  profileText,
                  style: TextStyle(
                    fontSize: fontSize,
                    height: 1.6,
                    color: kcTextSecondary,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileCardCompact extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String description;
  final double fontSize;

  const ProfileCardCompact({
    super.key,
    required this.imageAsset,
    required this.name,
    required this.description,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kcCardBackground,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(
          color: kcBorderColor.withValues(alpha: 0.5),
          width: 1,
        ),
      ),
      padding: const EdgeInsets.all(mediumSize),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: kcPrimaryAccent.withValues(alpha: 0.3),
                width: 3,
              ),
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(imageAsset),
              backgroundColor: kcBorderColor,
            ),
          ),
          horizontalSpaceMedium,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: fontSize * 1.3,
                    fontWeight: FontWeight.w700,
                    color: kcTextPrimary,
                  ),
                ),
                verticalSpaceSmall,
                Text(
                  description,
                  style: TextStyle(
                    fontSize: fontSize,
                    height: 1.5,
                    color: kcTextSecondary,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
