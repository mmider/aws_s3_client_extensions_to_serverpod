import 'package:freezed_annotation/freezed_annotation.dart';

class BoolConverter implements JsonConverter<bool, String> {
  const BoolConverter();

  @override
  bool fromJson(String json) => json.toLowerCase() == 'true';

  @override
  String toJson(bool object) => object.toString();
}
