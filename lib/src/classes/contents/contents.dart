import 'package:aws_s3_client_extensions_to_serverpod/src/classes/owner/owner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contents.g.dart';

@JsonSerializable()
class Contents {
  @JsonKey(name: 'ETag')
  final String? eTag;
  @JsonKey(name: 'Key')
  final String? key;
  @JsonKey(name: 'LastModified')
  final DateTime? lastModified;
  @JsonKey(name: 'Owner')
  final Owner? owner;
  @JsonKey(name: 'Size')
  final String? size;
  @JsonKey(name: 'StorageClass')
  final String? storageClass;

  const Contents({
    this.eTag,
    this.key,
    this.lastModified,
    this.owner,
    this.size,
    this.storageClass,
  });

  factory Contents.fromJson(Map<String, Object?> json) =>
      _$ContentsFromJson(json);

  Map<String, dynamic> toJson() => _$ContentsToJson(this);
}
