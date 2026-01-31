import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en')
  ];

  /// Navigation label for Home
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// Navigation label for About
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get navAbout;

  /// Navigation label for Team
  ///
  /// In en, this message translates to:
  /// **'Team'**
  String get navTeam;

  /// Navigation label for Events
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get navEvents;

  /// Main tagline on home page
  ///
  /// In en, this message translates to:
  /// **'MAKE DISCIPLES OF ALL NATIONS'**
  String get homeTagline;

  /// Subtitle on home page
  ///
  /// In en, this message translates to:
  /// **'A group of friends, different origins, one destination. \n Kadosh'**
  String get homeSubtitle;

  /// First part of Bible verse
  ///
  /// In en, this message translates to:
  /// **'As for me and my household,'**
  String get aboutVersePart1;

  /// Second part of Bible verse
  ///
  /// In en, this message translates to:
  /// **'we shall serve the Lord.'**
  String get aboutVersePart2;

  /// Bible verse for mobile view
  ///
  /// In en, this message translates to:
  /// **'As for me and my household, \n we shall serve the lord'**
  String get aboutVerseMobile;

  /// Bible verse reference
  ///
  /// In en, this message translates to:
  /// **'(Joshua 24:15)'**
  String get aboutVerseReference;

  /// Welcome message on about page
  ///
  /// In en, this message translates to:
  /// **'Welcome to Kadosh. We are a dedicated Catholic spiritual community serving within the Archdiocese of Hamburg.'**
  String get aboutWelcome;

  /// Vision and mission statement for desktop
  ///
  /// In en, this message translates to:
  /// **'Our vision is to make Jesus a living presence in the lives of individuals, leading to a faith-filled and vibrant Church. We dream of witnessing a generation of joyful disciples who wholeheartedly say \"YES\" to the call of Jesus. \n\n Our mission is to create a welcoming atmosphere where people can encounter God and deepen their relationship with Him. We are committed to nurturing and discipling young adults and families, helping them discover their true identity as beloved children of God. '**
  String get aboutVisionMission;

  /// Vision and mission statement for mobile
  ///
  /// In en, this message translates to:
  /// **'Our vision is to make Jesus a living presence in the lives of individuals, leading to a faith-filled and vibrant Church. We dream of witnessing a generation of joyful disciples who wholeheartedly say \"YES\" to the call of Jesus.\n\n Our mission is to create a welcoming atmosphere where people can encounter God and deepen their relationship with Him. We are committed to nurturing and discipling young adults and families, helping them discover their true identity as beloved children of God. '**
  String get aboutVisionMissionMobile;

  /// Team page title
  ///
  /// In en, this message translates to:
  /// **'Meet The Team'**
  String get teamTitle;

  /// Aires profile description
  ///
  /// In en, this message translates to:
  /// **'Aires, husband of Sandra and a devout man of God. He is an exemplary musician and a gifted sound engineer. He leads the band with his immense love for God and desire to raise more people of faith.'**
  String get airesProfileText;

  /// Sandra profile description
  ///
  /// In en, this message translates to:
  /// **'Sandra, is the wife of Aires and the voice that is hard to overhear both as the main singer, and the mediator of the group (believe it or not, even as a faith group, there are still squabbles among us!!). She is the backbone of the group.'**
  String get sandraProfileText;

  /// Shando profile description
  ///
  /// In en, this message translates to:
  /// **'Shando, one of the first musicians to join, plays the keyboard. He is the husband of Amrita and father to Luca. He is blessed with a rich voice and a worshipping heart.'**
  String get shandoProfileText;

  /// Savio profile description
  ///
  /// In en, this message translates to:
  /// **'Savio, husband of Alicia and father of Joseph is our bassist. Having experienced God\'s grace in his life, he is excited about what the future holds in store as he continues to worship the Lord.'**
  String get savioProfileText;

  /// Leon profile description
  ///
  /// In en, this message translates to:
  /// **'Leon, is our guitar player, husband of Angeline and father of 3. From heavy metal guitarist to awesome worship. His passion for God, family and cool riffs are hard to miss.'**
  String get leonProfileText;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
