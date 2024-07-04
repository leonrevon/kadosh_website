import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';
import 'package:kadosh_website/ui/widgets/footer_item.dart';
import 'package:kadosh_website/url_constants.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(226, 177, 176, 176),
      padding: const EdgeInsets.all(8.0),
      // margin: const EdgeInsets.only(top: 50, bottom: 10),
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
