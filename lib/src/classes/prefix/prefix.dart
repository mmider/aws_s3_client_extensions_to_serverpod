import 'package:freezed_annotation/freezed_annotation.dart';

part 'prefix.freezed.dart';
part 'prefix.g.dart';

@freezed
class Prefix with _$Prefix {
  const factory Prefix({
    @JsonKey(name: 'Prefix') required String prefix,
  }) = _Prefix;

  factory Prefix.fromJson(Map<String, Object?> json) => _$PrefixFromJson(json);
}
