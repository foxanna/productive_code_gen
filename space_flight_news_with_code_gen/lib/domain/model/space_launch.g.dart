// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_launch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpaceLaunchImpl _$$SpaceLaunchImplFromJson(Map<String, dynamic> json) =>
    _$SpaceLaunchImpl(
      id: json['id'] as String,
      test: json['test'] as String?,
    );

Map<String, dynamic> _$$SpaceLaunchImplToJson(_$SpaceLaunchImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('test', instance.test);
  return val;
}
