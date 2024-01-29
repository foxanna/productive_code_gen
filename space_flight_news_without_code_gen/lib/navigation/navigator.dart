import 'package:space_flight_news/navigation/router/router.dart';

class SpaceFlightNewsNavigator {
  const SpaceFlightNewsNavigator(this._router);

  final SpaceFlightNewsRouter _router;

  Future<void> goToArticlesList(String launchId) =>
      _router.pushNamed('/articles?launchId=$launchId');

  Future<void> goToArticleDetails(String articleId) =>
      _router.pushNamed('/article/$articleId');
}
