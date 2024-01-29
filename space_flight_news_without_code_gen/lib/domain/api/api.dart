import 'package:dio/dio.dart';
import 'package:space_flight_news/domain/model/article.dart';

class SpaceFlightNewsApi {
  const SpaceFlightNewsApi(
    Dio dio, {
    String? baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  Future<List<Article>> getArticles() async {
    final response = await _dio.fetch<List<dynamic>>(
      _buildGetRequestOptions('/articles'),
    );
    final json = response.data!;
    final articles = json
        .map((dynamic i) => Article.fromJson(i as Map<String, dynamic>))
        .toList();
    return articles;
  }

  Future<Article> getArticle(String articledId) async {
    final response = await _dio.fetch<Map<String, dynamic>>(
      _buildGetRequestOptions('/articles/$articledId'),
    );
    final json = response.data!;
    final article = Article.fromJson(json);
    return article;
  }

  Future<List<Article>> getArticlesByLaunch({required String launchId}) async {
    final response = await _dio.fetch<List<dynamic>>(
      _buildGetRequestOptions('/articles/launch/$launchId'),
    );
    final json = response.data!;
    final articles = json
        .map((dynamic i) => Article.fromJson(i as Map<String, dynamic>))
        .toList();
    return articles;
  }

  RequestOptions _buildGetRequestOptions(String path) =>
      Options(method: 'GET').compose(
        BaseOptions(baseUrl: _baseUrl ?? _dio.options.baseUrl),
        path,
      );
}
