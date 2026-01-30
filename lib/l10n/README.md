# Localization (i18n) Guide

This project supports English (EN) and German (DE) languages with German as the default.

## File Structure

```
lib/l10n/
├── app_en.arb          # English translations (template)
├── app_de.arb          # German translations
├── app_localizations.dart      # Generated - DO NOT EDIT
├── app_localizations_en.dart   # Generated - DO NOT EDIT
├── app_localizations_de.dart   # Generated - DO NOT EDIT
└── README.md
```

## How to Update Translations

### Step 1: Edit the ARB files

Edit the `.arb` files to add or modify translations:

- `app_en.arb` - English strings (this is the template file)
- `app_de.arb` - German strings

**Example ARB entry:**
```json
{
  "navHome": "Home",
  "@navHome": {
    "description": "Navigation label for Home"
  }
}
```

> Note: The `@keyName` entries with descriptions are only needed in the template file (`app_en.arb`).

### Step 2: Regenerate localization files

Run this command after editing ARB files:

```bash
flutter gen-l10n
```

This regenerates the `app_localizations*.dart` files automatically.

### Step 3: Use in code

Access translations in your widgets:

```dart
import 'package:kadosh_website/l10n/app_localizations.dart';

// In your build method:
final l10n = AppLocalizations.of(context)!;
Text(l10n.navHome);  // Returns "Home" or "Startseite" based on current locale
```

## Adding a New String

1. Add the key to `app_en.arb`:
```json
{
  "newKey": "English text",
  "@newKey": {
    "description": "Description of what this string is for"
  }
}
```

2. Add the same key to `app_de.arb`:
```json
{
  "newKey": "German text"
}
```

3. Run `flutter gen-l10n`

4. Use in code: `l10n.newKey`

## Changing the Default Language

Edit `lib/services/locale_service.dart`:

```dart
// To set English as default:
Locale _currentLocale = english;

// To set German as default:
Locale _currentLocale = german;
```

## Language Switcher

The language switcher widget is located at:
- Desktop: AppBar (top right)
- Mobile: Drawer menu (bottom)

File: `lib/ui/widgets/navigation_bar/language_switcher.dart`

## Quick Reference Commands

| Action | Command |
|--------|---------|
| Regenerate translations | `flutter gen-l10n` |
| Get dependencies | `flutter pub get` |
| Build web | `flutter build web` |
| Run locally | `flutter run -d chrome` |

## Troubleshooting

**Translations not updating?**
1. Make sure you ran `flutter gen-l10n`
2. Hot restart the app (not just hot reload)

**Missing translation key error?**
- Ensure the key exists in both `app_en.arb` and `app_de.arb`
- Run `flutter gen-l10n` to regenerate

**Import error for AppLocalizations?**
- Use: `import 'package:kadosh_website/l10n/app_localizations.dart';`
