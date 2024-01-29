import 'package:flutter/widgets.dart';
import 'package:space_flight_news/localization/localizations.dart';
import 'package:space_flight_news/localization/translations/translations.i69n.dart';

extension BuildContextX on BuildContext {
  String get languageCode => Localizations.localeOf(this).toLanguageTag();

  Translations get translations => SpaceFlightNewsLocalizations.of(this);
}
