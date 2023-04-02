import 'package:aws_s3_client_extensions_to_serverpod/src/converters/nullable_int_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'copy_object_result.g.dart';

@JsonSerializable()
class CopyObjectResult {
  @JsonKey(name: 'ETag')
  final String? eTag;
  @JsonKey(name: 'LastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'ChecksumCRC32')
  final String? checksumCRC32;
  @JsonKey(name: 'ChecksumCRC32C')
  final String? checksumCRC32C;
  @JsonKey(name: 'ChecksumSHA1')
  final String? checksumSHA1;
  // @NullableIntConverter()
  @JsonKey(name: 'ChecksumSHA256')
  final int? checksumSHA256;

  const CopyObjectResult({
    this.eTag,
    this.lastModified,
    this.checksumCRC32,
    this.checksumCRC32C,
    this.checksumSHA1,
    this.checksumSHA256,
  });

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
