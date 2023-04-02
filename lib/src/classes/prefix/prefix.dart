import 'package:json_annotation/json_annotation.dart';

part 'prefix.g.dart';

@JsonSerializable()
class Prefix {
  @JsonKey(name: 'Prefix')
  final String prefix;
  const Prefix({
    required this.prefix,
  });

  factory Prefix.fromJson(Map<String, Object?> json) => _$PrefixFromJson(json);
  Map<String, dynamic> toJson() => _$PrefixToJson(this);
}
