// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_object_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CopyObjectResult _$CopyObjectResultFromJson(Map<String, dynamic> json) =>
    CopyObjectResult(
      eTag: json['ETag'] as String?,
      lastModified: json['LastModified'] == null
          ? null
          : DateTime.parse(json['LastModified'] as String),
      checksumCRC32: json['ChecksumCRC32'] as String?,
      checksumCRC32C: json['ChecksumCRC32C'] as String?,
      checksumSHA1: json['ChecksumSHA1'] as String?,
      checksumSHA256: json['ChecksumSHA256'] as int?,
    );

Map<String, dynamic> _$CopyObjectResultToJson(CopyObjectResult instance) =>
    <String, dynamic>{
      'ETag': instance.eTag,
      'LastModified': instance.lastModified?.toIso8601String(),
      'ChecksumCRC32': instance.checksumCRC32,
      'ChecksumCRC32C': instance.checksumCRC32C,
      'ChecksumSHA1': instance.checksumSHA1,
      'ChecksumSHA256': instance.checksumSHA256,
    };
