import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/views/team/widgets/photo_circle.dart';

class ProfileWidget extends StatelessWidget {
  final String nameProfile;
  final String profileText;
  final double fontSize;
  final bool isMirrored;
  const ProfileWidget(this.nameProfile, this.profileText,
      {super.key, required this.isMirrored, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isMirrored
            ? Expanded(
                child: Text(
                  profileText,
                  style: TextStyle(
                    fontSize: fontSize,
                    height: 1.7,
                  ),
                  textAlign: TextAlign.justify,
                ),
              )
            : PhotoCircle(nameProfile),
        horizontalSpaceLarge,
        isMirrored
            ? PhotoCircle(nameProfile)
            : Expanded(
                child: Text(
                  profileText,
                  style: TextStyle(
                    fontSize: fontSize,
                    height: 1.7,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
      ],
    );
  }
}
