import 'package:flutter/material.dart';

class LocaleService extends ChangeNotifier {
  static const Locale english = Locale('en');
  static const Locale german = Locale('de');

  static const List<Locale> supportedLocales = [german, english];

  Locale _currentLocale = german;

  Locale get currentLocale => _currentLocale;

  void setLocale(Locale locale) {
    if (!supportedLocales.contains(locale)) return;
    if (_currentLocale == locale) return;

    _currentLocale = locale;
    notifyListeners();
  }

  void toggleLocale() {
    if (_currentLocale == english) {
      setLocale(german);
    } else {
      setLocale(english);
    }
  }

  bool get isEnglish => _currentLocale == english;
  bool get isGerman => _currentLocale == german;
}
