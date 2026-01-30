import 'package:flutter/material.dart';
import 'package:kadosh_website/app/app.locator.dart';
import 'package:kadosh_website/extensions/hover_extensions.dart';
import 'package:kadosh_website/services/locale_service.dart';
import 'package:kadosh_website/ui/common/ui_helpers.dart';

class LanguageSwitcher extends StatefulWidget {
  final bool isMobile;

  const LanguageSwitcher({super.key, this.isMobile = false});

  @override
  State<LanguageSwitcher> createState() => _LanguageSwitcherState();
}

class _LanguageSwitcherState extends State<LanguageSwitcher> {
  final LocaleService _localeService = locator<LocaleService>();

  @override
  void initState() {
    super.initState();
    _localeService.addListener(_onLocaleChanged);
  }

  @override
  void dispose() {
    _localeService.removeListener(_onLocaleChanged);
    super.dispose();
  }

  void _onLocaleChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final isEnglish = _localeService.isEnglish;

    return GestureDetector(
      onTap: () => _localeService.toggleLocale(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'EN',
            style: TextStyle(
              fontSize: widget.isMobile
                  ? getResponsiveLargeFontSize(context)
                  : getResponsiveSmallFontSize(context),
              fontWeight: isEnglish ? FontWeight.bold : FontWeight.normal,
              color: isEnglish ? Colors.black : Colors.grey,
            ),
          ),
          Text(
            ' | ',
            style: TextStyle(
              fontSize: widget.isMobile
                  ? getResponsiveLargeFontSize(context)
                  : getResponsiveSmallFontSize(context),
              color: Colors.grey,
            ),
          ),
          Text(
            'DE',
            style: TextStyle(
              fontSize: widget.isMobile
                  ? getResponsiveLargeFontSize(context)
                  : getResponsiveSmallFontSize(context),
              fontWeight: !isEnglish ? FontWeight.bold : FontWeight.normal,
              color: !isEnglish ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    ).moveOnHover(y: -5.0).scaleOnHover(scale: 1.1);
  }
}
