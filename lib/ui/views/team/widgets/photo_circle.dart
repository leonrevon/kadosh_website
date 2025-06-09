import 'package:flutter/material.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';

class PhotoCircle extends StatelessWidget {
  final String personImage;
  const PhotoCircle(this.personImage, {super.key});

  @override
  Widget build(BuildContext context) {
    final double radius = getResponsivePhotoSize(context);

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white, // Add a border for better contrast
          width: 3, // Border width
        ),
      ),
      child: CircleAvatar(
        radius: radius - 4, // Adjust radius to account for the border
        backgroundImage: AssetImage(personImage),
        backgroundColor:
            Colors.grey.shade200, // Fallback color for better appearance
      ),
    );
  }
}
