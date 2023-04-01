import 'package:aws_s3_client_extensions_to_serverpod/src/converters/nullable_int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'copy_object_result.freezed.dart';
part 'copy_object_result.g.dart';

@freezed
class CopyObjectResult with _$CopyObjectResult {
  const factory CopyObjectResult({
    @JsonKey(name: 'ETag') String? eTag,
    @JsonKey(name: 'LastModified') DateTime? lastModified,
    @JsonKey(name: 'ChecksumCRC32') String? checksumCRC32,
    @JsonKey(name: 'ChecksumCRC32C') String? checksumCRC32C,
    @JsonKey(name: 'ChecksumSHA1') String? checksumSHA1,
    @NullableIntConverter()
    @JsonKey(name: 'ChecksumSHA256')
        int? checksumSHA256,
  }) = _CopyObjectResult;

  factory CopyObjectResult.fromJson(Map<String, Object?> json) =>
      _$CopyObjectResultFromJson(json);

  static CopyObjectResult? fromJsonParker(Map<String, dynamic> json) {
    if (json['CopyObjectResult'] == null) {
      return null;
    }
    return CopyObjectResult.fromJson(
      json['CopyObjectResult'] as Map<String, dynamic>,
    );
  }
}
