import 'package:aws_s3_client_extensions_to_serverpod/src/classes/contents/contents.dart';
import 'package:aws_s3_client_extensions_to_serverpod/src/classes/prefix/prefix.dart';
import 'package:aws_s3_client_extensions_to_serverpod/src/converters/bool_converter.dart';
import 'package:aws_s3_client_extensions_to_serverpod/src/converters/nullable_int_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_bucket_result.g.dart';

@JsonSerializable()
class ListBucketResult {
  @BoolConverter()
  @JsonKey(name: 'IsTruncated')
  final bool isTruncated;
  @JsonKey(name: 'Contents')
  final List<Contents> contents;
  @JsonKey(name: 'Name')
  final String name;
  @JsonKey(name: 'Prefix')
  final String? prefix;
  @JsonKey(name: 'Delimiter')
  final String? delimiter;
  @NullableIntConverter()
  @JsonKey(name: 'MaxKeys')
  final int? maxKeys;
  @NullableIntConverter()
  @JsonKey(name: 'KeyCount')
  final int? keyCount;
  @JsonKey(name: 'EncodingType')
  final String? encodingType;
  @JsonKey(name: 'ContinuationToken')
  final String? continuationToken;
  @JsonKey(name: 'NextContinuationToken')
  final String? nextContinuationToken;
  @JsonKey(name: 'StartAfter')
  final String? startAfter;
  @JsonKey(name: 'CommonPrefixes')
  final List<Prefix> commonPrefixes;

  const ListBucketResult({
    required this.isTruncated,
    this.contents = const [],
    required this.name,
    this.prefix,
    this.delimiter,
    this.maxKeys,
    this.keyCount,
    this.encodingType,
    this.continuationToken,
    this.nextContinuationToken,
    this.startAfter,
    this.commonPrefixes = const [],
  });

  factory ListBucketResult.fromJson(Map<String, Object?> json) =>
      _$ListBucketResultFromJson(json);

  Map<String, dynamic> toJson() => _$ListBucketResultToJson(this);

  static ListBucketResult? fromJsonParker(Map<String, dynamic> json) {
    if (json['ListBucketResult'] == null) {
      return null;
    }
    return ListBucketResult.fromJson(
      json['ListBucketResult'] as Map<String, dynamic>,
    );
  }
}
