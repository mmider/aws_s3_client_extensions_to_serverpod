// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_object_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CopyObjectResult _$$_CopyObjectResultFromJson(Map<String, dynamic> json) =>
    _$_CopyObjectResult(
      eTag: json['ETag'] as String?,
      lastModified: json['LastModified'] == null
          ? null
          : DateTime.parse(json['LastModified'] as String),
      checksumCRC32: json['ChecksumCRC32'] as String?,
      checksumCRC32C: json['ChecksumCRC32C'] as String?,
      checksumSHA1: json['ChecksumSHA1'] as String?,
      checksumSHA256: const NullableIntConverter()
          .fromJson(json['ChecksumSHA256'] as String?),
    );

Map<String, dynamic> _$$_CopyObjectResultToJson(_$_CopyObjectResult instance) =>
    <String, dynamic>{
      'ETag': instance.eTag,
      'LastModified': instance.lastModified?.toIso8601String(),
      'ChecksumCRC32': instance.checksumCRC32,
      'ChecksumCRC32C': instance.checksumCRC32C,
      'ChecksumSHA1': instance.checksumSHA1,
      'ChecksumSHA256':
          const NullableIntConverter().toJson(instance.checksumSHA256),
    };
