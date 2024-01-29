import 'package:flutter/widgets.dart';
import 'package:space_flight_news/localization/translations/translations.dart';
import 'package:space_flight_news/localization/translations/translations_uk.dart';

final _translations = <String, Translations Function()>{
  'en': () => const Translations(),
  'uk': () => const Translations_uk(),
};

class SpaceFlightNewsLocalizations {
  const SpaceFlightNewsLocalizations(this.translations);

  final Translations translations;

  static const LocalizationsDelegate<SpaceFlightNewsLocalizations> delegate =
      _SpaceFlightNewsLocalizationsDelegate();

  static final List<Locale> supportedLocales =
      _translations.keys.map((x) => Locale(x)).toList();

  static Translations of(BuildContext context) =>
      Localizations.of<SpaceFlightNewsLocalizations>(
              context, SpaceFlightNewsLocalizations)!
          .translations;
}

class _SpaceFlightNewsLocalizationsDelegate
    extends LocalizationsDelegate<SpaceFlightNewsLocalizations> {
  const _SpaceFlightNewsLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      _translations.keys.contains(locale.languageCode);

  @override
  Future<SpaceFlightNewsLocalizations> load(Locale locale) => Future.value(
      SpaceFlightNewsLocalizations(_translations[locale.languageCode]!()));

  @override
  bool shouldReload(LocalizationsDelegate<SpaceFlightNewsLocalizations> old) =>
      false;
}
