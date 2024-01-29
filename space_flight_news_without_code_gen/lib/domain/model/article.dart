import 'package:space_flight_news/domain/converter/int_to_string_converter.dart';
import 'package:space_flight_news/domain/model/space_launch.dart';

class Article {
  const Article({
    required this.id,
    required this.title,
    this.url,
    this.image,
    this.newsSite,
    this.summary,
    this.publishedAt,
    this.launches = const <SpaceLaunch>[],
  });

  final String id;
  final String title;
  final String? url;
  final Uri? image;
  final String? newsSite;
  final String? summary;
  final DateTime? publishedAt;
  final List<SpaceLaunch> launches;

  static Article fromJson(Map<String, dynamic> json) => Article(
        id: const IntToStringConverter().fromJson(json['id'] as int),
        title: json['title'] as String,
        url: json['url'] as String?,
        image: json['imageUrl'] == null
            ? null
            : Uri.tryParse(json['imageUrl'] as String),
        newsSite: json['newsSite'] as String?,
        summary: json['summary'] as String?,
        publishedAt: json['publishedAt'] == null
            ? null
            : DateTime.parse(json['publishedAt'] as String),
        launches: (json['launches'] as List<dynamic>?)
                ?.map((e) => SpaceLaunch.fromJson(e as Map<String, dynamic>))
                .toList() ??
            const [],
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Article &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          url == other.url &&
          image == other.image &&
          newsSite == other.newsSite &&
          summary == other.summary &&
          publishedAt == other.publishedAt &&
          launches == other.launches;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      url.hashCode ^
      image.hashCode ^
      newsSite.hashCode ^
      summary.hashCode ^
      publishedAt.hashCode ^
      launches.hashCode;

  Article copyWith({
    String? id,
    String? title,
    String? url,
    Uri? image,
    String? newsSite,
    String? summary,
    DateTime? publishedAt,
    List<SpaceLaunch>? launches,
  }) =>
      Article(
        id: id ?? this.id,
        title: title ?? this.title,
        url: url ?? this.url,
        image: image ?? this.image,
        newsSite: newsSite ?? this.newsSite,
        summary: summary ?? this.summary,
        publishedAt: publishedAt ?? this.publishedAt,
        launches: launches ?? this.launches,
      );
}
