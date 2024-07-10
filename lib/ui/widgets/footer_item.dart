import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterItem extends StatefulWidget {
  final IconData iconData;
  final Uri url;
  const FooterItem({super.key, required this.iconData, required this.url});

  @override
  State<FooterItem> createState() => _FooterItemState();
}

class _FooterItemState extends State<FooterItem> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL(widget.url);
        setState(() {
          isHovered = false;
        });
      },
      child: MouseRegion(
          onHover: (e) {
            setState(() {
              isHovered = true;
            });
          },
          onExit: (e) {
            setState(() {
              isHovered = false;
            });
          },
          child: _buildIcon(widget.iconData, isHovered)),
    );
  }

  void _launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}

Widget _buildIcon(IconData icon, bool isHovered) {
  return Icon(
    icon,
    color: isHovered ? Colors.amber : Colors.white,
  );
}
