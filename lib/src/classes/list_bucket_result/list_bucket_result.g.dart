// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_bucket_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListBucketResult _$$_ListBucketResultFromJson(Map<String, dynamic> json) =>
    _$_ListBucketResult(
      isTruncated:
          const BoolConverter().fromJson(json['IsTruncated'] as String),
      contents: (json['Contents'] as List<dynamic>?)
              ?.map((e) => Contents.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      name: json['Name'] as String,
      prefix: json['Prefix'] as String?,
      delimiter: json['Delimiter'] as String?,
      maxKeys:
          const NullableIntConverter().fromJson(json['MaxKeys'] as String?),
      keyCount:
          const NullableIntConverter().fromJson(json['KeyCount'] as String?),
      encodingType: json['EncodingType'] as String?,
      continuationToken: json['ContinuationToken'] as String?,
      nextContinuationToken: json['NextContinuationToken'] as String?,
      startAfter: json['StartAfter'] as String?,
      commonPrefixes: (json['CommonPrefixes'] as List<dynamic>?)
              ?.map((e) => Prefix.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ListBucketResultToJson(_$_ListBucketResult instance) =>
    <String, dynamic>{
      'IsTruncated': const BoolConverter().toJson(instance.isTruncated),
      'Contents': instance.contents.map((e) => e.toJson()).toList(),
      'Name': instance.name,
      'Prefix': instance.prefix,
      'Delimiter': instance.delimiter,
      'MaxKeys': const NullableIntConverter().toJson(instance.maxKeys),
      'KeyCount': const NullableIntConverter().toJson(instance.keyCount),
      'EncodingType': instance.encodingType,
      'ContinuationToken': instance.continuationToken,
      'NextContinuationToken': instance.nextContinuationToken,
      'StartAfter': instance.startAfter,
      'CommonPrefixes': instance.commonPrefixes.map((e) => e.toJson()).toList(),
    };
