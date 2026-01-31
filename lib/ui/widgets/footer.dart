import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kadosh_website/ui/common/app_colors.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/footer_item.dart';
import 'package:kadosh_website/helpers/url_constants.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kcFooter,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      padding: const EdgeInsets.only(top: smallSize, bottom: smallSize),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FooterItem(
            iconData: FontAwesomeIcons.facebook,
            url: Uri.parse(kfacebookUri),
          ),
          horizontalSpaceMedium,
          FooterItem(
            iconData: FontAwesomeIcons.instagram,
            url: Uri.parse(kinstagramUri),
          ),
          horizontalSpaceMedium,
          FooterItem(
            iconData: FontAwesomeIcons.youtube,
            url: Uri.parse(kyoutubeUri),
          ),
          horizontalSpaceMedium,
          FooterItem(
            iconData: FontAwesomeIcons.envelope,
            url: Uri.parse(kemailKadosh),
          ),
        ],
      ),
    );
  }
}
