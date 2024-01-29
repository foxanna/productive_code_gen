import 'package:flutter/material.dart';
import 'package:space_flight_news/presentation/article_details/article_details_page.dart';
import 'package:space_flight_news/presentation/articles_list/articles_list_page.dart';

class SpaceFlightNewsRouter {
  const SpaceFlightNewsRouter(this._navigatorKey);

  final GlobalKey<NavigatorState> _navigatorKey;

  static const initialRoute = '/articles';

  Future<void> pushNamed(String routeName) =>
      _navigatorKey.currentState!.pushNamed(routeName);

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    if (settings.name == null) {
      return null;
    }

    final uri = Uri.parse(settings.name!);
    final pathSegments = uri.pathSegments;
    if (pathSegments.isEmpty) {
      return null;
    }

    if (pathSegments.first == 'articles') {
      return MaterialPageRoute(
        builder: (context) => ArticlesListPage(
          launchId: uri.queryParameters['launchId'],
        ),
      );
    }

    if (pathSegments.first == 'article' && pathSegments.length == 2) {
      return MaterialPageRoute(
        builder: (context) => ArticleDetailsPage(
          articleId: pathSegments[1],
        ),
      );
    }

    return null;
  }
}
