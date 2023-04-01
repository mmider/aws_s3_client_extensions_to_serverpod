import 'package:aws_s3_client_extensions_to_serverpod/src/classes/contents/contents.dart';
import 'package:aws_s3_client_extensions_to_serverpod/src/classes/prefix/prefix.dart';
import 'package:aws_s3_client_extensions_to_serverpod/src/converters/bool_converter.dart';
import 'package:aws_s3_client_extensions_to_serverpod/src/converters/nullable_int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_bucket_result.freezed.dart';
part 'list_bucket_result.g.dart';

@freezed
class ListBucketResult with _$ListBucketResult {
  @JsonSerializable(explicitToJson: true)
  const factory ListBucketResult({
    @BoolConverter() @JsonKey(name: 'IsTruncated') required bool isTruncated,
    @JsonKey(name: 'Contents') @Default([]) List<Contents> contents,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'Prefix') String? prefix,
    @JsonKey(name: 'Delimiter') String? delimiter,
    @NullableIntConverter() @JsonKey(name: 'MaxKeys') int? maxKeys,
    @NullableIntConverter() @JsonKey(name: 'KeyCount') int? keyCount,
    @JsonKey(name: 'EncodingType') String? encodingType,
    @JsonKey(name: 'ContinuationToken') String? continuationToken,
    @JsonKey(name: 'NextContinuationToken') String? nextContinuationToken,
    @JsonKey(name: 'StartAfter') String? startAfter,
    @JsonKey(name: 'CommonPrefixes') @Default([]) List<Prefix> commonPrefixes,
  }) = _ListBucketResult;

  factory ListBucketResult.fromJson(Map<String, Object?> json) =>
      _$ListBucketResultFromJson(json);

  static ListBucketResult? fromJsonParker(Map<String, dynamic> json) {
    if (json['ListBucketResult'] == null) {
      return null;
    }
    return ListBucketResult.fromJson(
      json['ListBucketResult'] as Map<String, dynamic>,
    );
  }
}
