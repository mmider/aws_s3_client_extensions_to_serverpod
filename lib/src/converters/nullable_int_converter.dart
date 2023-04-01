import 'package:freezed_annotation/freezed_annotation.dart';

class NullableIntConverter implements JsonConverter<int?, String?> {
  const NullableIntConverter();

  @override
  int? fromJson(String? json) => json == null ? null : int.parse(json);

  @override
  String? toJson(int? object) => object?.toString();
}
