import 'package:json_annotation/json_annotation.dart';

part 'owner.g.dart';

@JsonSerializable()
class Owner {
  @JsonKey(name: 'DisplayName')
  final String? displayName;
  @JsonKey(name: 'ID')
  final String id;

  const Owner({
    this.displayName,
    required this.id,
  });

  factory Owner.fromJson(Map<String, Object?> json) => _$OwnerFromJson(json);
  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}
