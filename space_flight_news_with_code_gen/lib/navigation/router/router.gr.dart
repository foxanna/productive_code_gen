// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$SpaceFlightNewsRouter extends RootStackRouter {
  // ignore: unused_element
  _$SpaceFlightNewsRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ArticleDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ArticleDetailsRouteArgs>(
          orElse: () => ArticleDetailsRouteArgs(
              articleId: pathParams.getString('articleId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ArticleDetailsPage(
          key: args.key,
          articleId: args.articleId,
        ),
      );
    },
    ArticlesListRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ArticlesListRouteArgs>(
          orElse: () => ArticlesListRouteArgs(
              launchId: queryParams.optString('launchId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ArticlesListPage(
          key: args.key,
          launchId: args.launchId,
        ),
      );
    },
  };
}

/// generated route for
/// [ArticleDetailsPage]
class ArticleDetailsRoute extends PageRouteInfo<ArticleDetailsRouteArgs> {
  ArticleDetailsRoute({
    Key? key,
    required String articleId,
    List<PageRouteInfo>? children,
  }) : super(
          ArticleDetailsRoute.name,
          args: ArticleDetailsRouteArgs(
            key: key,
            articleId: articleId,
          ),
          rawPathParams: {'articleId': articleId},
          initialChildren: children,
        );

  static const String name = 'ArticleDetailsRoute';

  static const PageInfo<ArticleDetailsRouteArgs> page =
      PageInfo<ArticleDetailsRouteArgs>(name);
}

class ArticleDetailsRouteArgs {
  const ArticleDetailsRouteArgs({
    this.key,
    required this.articleId,
  });

  final Key? key;

  final String articleId;

  @override
  String toString() {
    return 'ArticleDetailsRouteArgs{key: $key, articleId: $articleId}';
  }
}

/// generated route for
/// [ArticlesListPage]
class ArticlesListRoute extends PageRouteInfo<ArticlesListRouteArgs> {
  ArticlesListRoute({
    Key? key,
    String? launchId,
    List<PageRouteInfo>? children,
  }) : super(
          ArticlesListRoute.name,
          args: ArticlesListRouteArgs(
            key: key,
            launchId: launchId,
          ),
          rawQueryParams: {'launchId': launchId},
          initialChildren: children,
        );

  static const String name = 'ArticlesListRoute';

  static const PageInfo<ArticlesListRouteArgs> page =
      PageInfo<ArticlesListRouteArgs>(name);
}

class ArticlesListRouteArgs {
  const ArticlesListRouteArgs({
    this.key,
    this.launchId,
  });

  final Key? key;

  final String? launchId;

  @override
  String toString() {
    return 'ArticlesListRouteArgs{key: $key, launchId: $launchId}';
  }
}
