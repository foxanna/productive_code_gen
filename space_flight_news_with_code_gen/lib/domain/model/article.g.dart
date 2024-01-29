// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      id: const IntToStringConverter().fromJson(json['id'] as int),
      title: json['title'] as String,
      url: json['url'] as String?,
      image: json['imageUrl'] == null
          ? null
          : Uri.parse(json['imageUrl'] as String),
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

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) {
  final val = <String, dynamic>{
    'id': const IntToStringConverter().toJson(instance.id),
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('imageUrl', instance.image?.toString());
  writeNotNull('newsSite', instance.newsSite);
  writeNotNull('summary', instance.summary);
  writeNotNull('publishedAt', instance.publishedAt?.toIso8601String());
  val['launches'] = instance.launches.map((e) => e.toJson()).toList();
  return val;
}
