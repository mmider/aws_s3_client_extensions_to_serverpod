// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contents _$ContentsFromJson(Map<String, dynamic> json) => Contents(
      eTag: json['ETag'] as String?,
      key: json['Key'] as String?,
      lastModified: json['LastModified'] == null
          ? null
          : DateTime.parse(json['LastModified'] as String),
      owner: json['Owner'] == null
          ? null
          : Owner.fromJson(json['Owner'] as Map<String, dynamic>),
      size: json['Size'] as String?,
      storageClass: json['StorageClass'] as String?,
    );

Map<String, dynamic> _$ContentsToJson(Contents instance) => <String, dynamic>{
      'ETag': instance.eTag,
      'Key': instance.key,
      'LastModified': instance.lastModified?.toIso8601String(),
      'Owner': instance.owner,
      'Size': instance.size,
      'StorageClass': instance.storageClass,
    };
