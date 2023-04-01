import 'package:aws_s3_client_extensions_to_serverpod/src/classes/owner/owner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contents.freezed.dart';
part 'contents.g.dart';

@freezed
class Contents with _$Contents {
  const factory Contents({
    @JsonKey(name: 'ETag') String? eTag,
    @JsonKey(name: 'Key') String? key,
    @JsonKey(name: 'LastModified') DateTime? lastModified,
    @JsonKey(name: 'Owner') Owner? owner,
    @JsonKey(name: 'Size') String? size,
    @JsonKey(name: 'StorageClass') String? storageClass,
  }) = _Contents;

  factory Contents.fromJson(Map<String, Object?> json) =>
      _$ContentsFromJson(json);
}
