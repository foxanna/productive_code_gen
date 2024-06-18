// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'space_launch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpaceLaunch _$SpaceLaunchFromJson(Map<String, dynamic> json) {
  return _SpaceLaunch.fromJson(json);
}

/// @nodoc
mixin _$SpaceLaunch {
  String get id => throw _privateConstructorUsedError;
  String? get test => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpaceLaunchCopyWith<SpaceLaunch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpaceLaunchCopyWith<$Res> {
  factory $SpaceLaunchCopyWith(
          SpaceLaunch value, $Res Function(SpaceLaunch) then) =
      _$SpaceLaunchCopyWithImpl<$Res, SpaceLaunch>;
  @useResult
  $Res call({String id, String? test});
}

/// @nodoc
class _$SpaceLaunchCopyWithImpl<$Res, $Val extends SpaceLaunch>
    implements $SpaceLaunchCopyWith<$Res> {
  _$SpaceLaunchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? test = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpaceLaunchImplCopyWith<$Res>
    implements $SpaceLaunchCopyWith<$Res> {
  factory _$$SpaceLaunchImplCopyWith(
          _$SpaceLaunchImpl value, $Res Function(_$SpaceLaunchImpl) then) =
      __$$SpaceLaunchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? test});
}

/// @nodoc
class __$$SpaceLaunchImplCopyWithImpl<$Res>
    extends _$SpaceLaunchCopyWithImpl<$Res, _$SpaceLaunchImpl>
    implements _$$SpaceLaunchImplCopyWith<$Res> {
  __$$SpaceLaunchImplCopyWithImpl(
      _$SpaceLaunchImpl _value, $Res Function(_$SpaceLaunchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? test = freezed,
  }) {
    return _then(_$SpaceLaunchImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpaceLaunchImpl implements _SpaceLaunch {
  const _$SpaceLaunchImpl({required this.id, this.test});

  factory _$SpaceLaunchImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpaceLaunchImplFromJson(json);

  @override
  final String id;
  @override
  final String? test;

  @override
  String toString() {
    return 'SpaceLaunch(id: $id, test: $test)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpaceLaunchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.test, test) || other.test == test));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, test);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpaceLaunchImplCopyWith<_$SpaceLaunchImpl> get copyWith =>
      __$$SpaceLaunchImplCopyWithImpl<_$SpaceLaunchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpaceLaunchImplToJson(
      this,
    );
  }
}

abstract class _SpaceLaunch implements SpaceLaunch {
  const factory _SpaceLaunch({required final String id, final String? test}) =
      _$SpaceLaunchImpl;

  factory _SpaceLaunch.fromJson(Map<String, dynamic> json) =
      _$SpaceLaunchImpl.fromJson;

  @override
  String get id;
  @override
  String? get test;
  @override
  @JsonKey(ignore: true)
  _$$SpaceLaunchImplCopyWith<_$SpaceLaunchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
