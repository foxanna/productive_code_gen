// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  @IntToStringConverter()
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageUrl')
  Uri? get image => throw _privateConstructorUsedError;
  String? get newsSite => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  String? get test => throw _privateConstructorUsedError;
  DateTime? get publishedAt => throw _privateConstructorUsedError;
  List<SpaceLaunch> get launches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {@IntToStringConverter() String id,
      String title,
      String? url,
      @JsonKey(name: 'imageUrl') Uri? image,
      String? newsSite,
      String? summary,
      String? test,
      DateTime? publishedAt,
      List<SpaceLaunch> launches});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = freezed,
    Object? image = freezed,
    Object? newsSite = freezed,
    Object? summary = freezed,
    Object? test = freezed,
    Object? publishedAt = freezed,
    Object? launches = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uri?,
      newsSite: freezed == newsSite
          ? _value.newsSite
          : newsSite // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      launches: null == launches
          ? _value.launches
          : launches // ignore: cast_nullable_to_non_nullable
              as List<SpaceLaunch>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
          _$ArticleImpl value, $Res Function(_$ArticleImpl) then) =
      __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@IntToStringConverter() String id,
      String title,
      String? url,
      @JsonKey(name: 'imageUrl') Uri? image,
      String? newsSite,
      String? summary,
      String? test,
      DateTime? publishedAt,
      List<SpaceLaunch> launches});
}

/// @nodoc
class __$$ArticleImplCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticleImpl>
    implements _$$ArticleImplCopyWith<$Res> {
  __$$ArticleImplCopyWithImpl(
      _$ArticleImpl _value, $Res Function(_$ArticleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = freezed,
    Object? image = freezed,
    Object? newsSite = freezed,
    Object? summary = freezed,
    Object? test = freezed,
    Object? publishedAt = freezed,
    Object? launches = null,
  }) {
    return _then(_$ArticleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uri?,
      newsSite: freezed == newsSite
          ? _value.newsSite
          : newsSite // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      launches: null == launches
          ? _value._launches
          : launches // ignore: cast_nullable_to_non_nullable
              as List<SpaceLaunch>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleImpl implements _Article {
  const _$ArticleImpl(
      {@IntToStringConverter() required this.id,
      required this.title,
      this.url,
      @JsonKey(name: 'imageUrl') this.image,
      this.newsSite,
      this.summary,
      this.test,
      this.publishedAt,
      final List<SpaceLaunch> launches = const []})
      : _launches = launches;

  factory _$ArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleImplFromJson(json);

  @override
  @IntToStringConverter()
  final String id;
  @override
  final String title;
  @override
  final String? url;
  @override
  @JsonKey(name: 'imageUrl')
  final Uri? image;
  @override
  final String? newsSite;
  @override
  final String? summary;
  @override
  final String? test;
  @override
  final DateTime? publishedAt;
  final List<SpaceLaunch> _launches;
  @override
  @JsonKey()
  List<SpaceLaunch> get launches {
    if (_launches is EqualUnmodifiableListView) return _launches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_launches);
  }

  @override
  String toString() {
    return 'Article(id: $id, title: $title, url: $url, image: $image, newsSite: $newsSite, summary: $summary, test: $test, publishedAt: $publishedAt, launches: $launches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.newsSite, newsSite) ||
                other.newsSite == newsSite) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            const DeepCollectionEquality().equals(other._launches, _launches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      url,
      image,
      newsSite,
      summary,
      test,
      publishedAt,
      const DeepCollectionEquality().hash(_launches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      __$$ArticleImplCopyWithImpl<_$ArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleImplToJson(
      this,
    );
  }
}

abstract class _Article implements Article {
  const factory _Article(
      {@IntToStringConverter() required final String id,
      required final String title,
      final String? url,
      @JsonKey(name: 'imageUrl') final Uri? image,
      final String? newsSite,
      final String? summary,
      final String? test,
      final DateTime? publishedAt,
      final List<SpaceLaunch> launches}) = _$ArticleImpl;

  factory _Article.fromJson(Map<String, dynamic> json) = _$ArticleImpl.fromJson;

  @override
  @IntToStringConverter()
  String get id;
  @override
  String get title;
  @override
  String? get url;
  @override
  @JsonKey(name: 'imageUrl')
  Uri? get image;
  @override
  String? get newsSite;
  @override
  String? get summary;
  @override
  String? get test;
  @override
  DateTime? get publishedAt;
  @override
  List<SpaceLaunch> get launches;
  @override
  @JsonKey(ignore: true)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
