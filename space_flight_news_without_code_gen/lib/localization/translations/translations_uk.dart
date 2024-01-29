import 'package:space_flight_news/localization/translations/translations.dart';

// ignore: camel_case_types
class Translations_uk extends Translations {
  const Translations_uk();

  @override
  String on(String date) => date;

  @override
  String publishedBy(String who) => 'Оприлюднено $who';

  @override
  String get relatedArticles => 'Переглянути повʼязані новини';

  @override
  String get title => 'Новини космічних польотів';

  @override
  String get error => 'Щось пішло не за планом';

  @override
  String get retry => 'Спробувати ще';
}
