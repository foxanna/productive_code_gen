import 'package:space_flight_news/domain/converter/int_to_string_converter.dart';
import 'package:space_flight_news/domain/model/space_launch.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article({
    @IntToStringConverter() required String id,
    required String title,
    String? url,
    @JsonKey(name: 'imageUrl') Uri? image,
    String? newsSite,
    String? summary,
    String? test,
    DateTime? publishedAt,
    @Default([]) List<SpaceLaunch> launches,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
