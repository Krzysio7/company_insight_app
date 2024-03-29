import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';

// General extensions file.
// ignore: prefer-match-file-name
extension LocalizationX on BuildContext {
  AppLocalizations get localization => AppLocalizations.of(this) ?? AppLocalizationsEn();
}
