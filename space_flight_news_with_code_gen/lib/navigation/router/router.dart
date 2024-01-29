import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:space_flight_news/presentation/article_details/article_details_page.dart';
import 'package:space_flight_news/presentation/articles_list/articles_list_page.dart';

part 'router.gr.dart';

@lazySingleton
@AutoRouterConfig()
class SpaceFlightNewsRouter extends _$SpaceFlightNewsRouter {
  SpaceFlightNewsRouter(GlobalKey<NavigatorState> navigatorKey)
      : super(navigatorKey: navigatorKey);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: ArticlesListRoute.page,
          path: '/articles',
          initial: true,
        ),
        AutoRoute(
          page: ArticleDetailsRoute.page,
          path: '/article/:articleId',
        ),
      ];
}
