import 'package:freezed_annotation/freezed_annotation.dart';

part 'space_launch.freezed.dart';
part 'space_launch.g.dart';

@freezed
class SpaceLaunch with _$SpaceLaunch {
  const factory SpaceLaunch({
    required String id,
  }) = _SpaceLaunch;

  factory SpaceLaunch.fromJson(Map<String, dynamic> json) =>
      _$SpaceLaunchFromJson(json);
}
