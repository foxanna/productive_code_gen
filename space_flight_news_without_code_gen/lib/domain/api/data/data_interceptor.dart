import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:space_flight_news/domain/api/data/article_details.dart';
import 'package:space_flight_news/domain/api/data/articles_list.dart';
import 'package:space_flight_news/domain/api/data/articles_list_per_launch.dart';

class SpaceFlightNewsDataInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final uri = Uri.parse(options.path);
    if (uri.pathSegments.isNotEmpty && uri.pathSegments.first == 'articles') {
      switch (uri.pathSegments.length) {
        case 1:
          return handler.resolve(
            Response(
              requestOptions: options,
              data: jsonDecode(articlesListJsonString),
            ),
          );
        case 2:
          final articleId = uri.pathSegments.last;
          return handler.resolve(
            Response(
              requestOptions: options,
              data: jsonDecode(articleDetailsJsonStrings[articleId]!),
            ),
          );
        case 3:
          final launchId =
              uri.pathSegments[1] == 'launch' ? uri.pathSegments[2] : null;
          if (launchId != null) {
            return handler.resolve(
              Response(
                requestOptions: options,
                data: jsonDecode(articlesListPerLaunchJsonStrings[launchId]!),
              ),
            );
          }
      }
    }

    super.onRequest(options, handler);
  }
}
