class SpaceLaunch {
  const SpaceLaunch({
    required this.id,
  });

  final String id;

  static SpaceLaunch fromJson(Map<String, dynamic> json) => SpaceLaunch(
        id: json['id'] as String,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpaceLaunch &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;

  SpaceLaunch copyWith({
    String? id,
  }) =>
      SpaceLaunch(
        id: id ?? this.id,
      );
}
