// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Contents _$ContentsFromJson(Map<String, dynamic> json) {
  return _Contents.fromJson(json);
}

/// @nodoc
mixin _$Contents {
  @JsonKey(name: 'ETag')
  String? get eTag => throw _privateConstructorUsedError;
  @JsonKey(name: 'Key')
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'LastModified')
  DateTime? get lastModified => throw _privateConstructorUsedError;
  @JsonKey(name: 'Owner')
  Owner? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'Size')
  String? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'StorageClass')
  String? get storageClass => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentsCopyWith<Contents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentsCopyWith<$Res> {
  factory $ContentsCopyWith(Contents value, $Res Function(Contents) then) =
      _$ContentsCopyWithImpl<$Res, Contents>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ETag') String? eTag,
      @JsonKey(name: 'Key') String? key,
      @JsonKey(name: 'LastModified') DateTime? lastModified,
      @JsonKey(name: 'Owner') Owner? owner,
      @JsonKey(name: 'Size') String? size,
      @JsonKey(name: 'StorageClass') String? storageClass});

  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class _$ContentsCopyWithImpl<$Res, $Val extends Contents>
    implements $ContentsCopyWith<$Res> {
  _$ContentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eTag = freezed,
    Object? key = freezed,
    Object? lastModified = freezed,
    Object? owner = freezed,
    Object? size = freezed,
    Object? storageClass = freezed,
  }) {
    return _then(_value.copyWith(
      eTag: freezed == eTag
          ? _value.eTag
          : eTag // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      storageClass: freezed == storageClass
          ? _value.storageClass
          : storageClass // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ContentsCopyWith<$Res> implements $ContentsCopyWith<$Res> {
  factory _$$_ContentsCopyWith(
          _$_Contents value, $Res Function(_$_Contents) then) =
      __$$_ContentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ETag') String? eTag,
      @JsonKey(name: 'Key') String? key,
      @JsonKey(name: 'LastModified') DateTime? lastModified,
      @JsonKey(name: 'Owner') Owner? owner,
      @JsonKey(name: 'Size') String? size,
      @JsonKey(name: 'StorageClass') String? storageClass});

  @override
  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$_ContentsCopyWithImpl<$Res>
    extends _$ContentsCopyWithImpl<$Res, _$_Contents>
    implements _$$_ContentsCopyWith<$Res> {
  __$$_ContentsCopyWithImpl(
      _$_Contents _value, $Res Function(_$_Contents) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eTag = freezed,
    Object? key = freezed,
    Object? lastModified = freezed,
    Object? owner = freezed,
    Object? size = freezed,
    Object? storageClass = freezed,
  }) {
    return _then(_$_Contents(
      eTag: freezed == eTag
          ? _value.eTag
          : eTag // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      storageClass: freezed == storageClass
          ? _value.storageClass
          : storageClass // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Contents implements _Contents {
  const _$_Contents(
      {@JsonKey(name: 'ETag') this.eTag,
      @JsonKey(name: 'Key') this.key,
      @JsonKey(name: 'LastModified') this.lastModified,
      @JsonKey(name: 'Owner') this.owner,
      @JsonKey(name: 'Size') this.size,
      @JsonKey(name: 'StorageClass') this.storageClass});

  factory _$_Contents.fromJson(Map<String, dynamic> json) =>
      _$$_ContentsFromJson(json);

  @override
  @JsonKey(name: 'ETag')
  final String? eTag;
  @override
  @JsonKey(name: 'Key')
  final String? key;
  @override
  @JsonKey(name: 'LastModified')
  final DateTime? lastModified;
  @override
  @JsonKey(name: 'Owner')
  final Owner? owner;
  @override
  @JsonKey(name: 'Size')
  final String? size;
  @override
  @JsonKey(name: 'StorageClass')
  final String? storageClass;

  @override
  String toString() {
    return 'Contents(eTag: $eTag, key: $key, lastModified: $lastModified, owner: $owner, size: $size, storageClass: $storageClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contents &&
            (identical(other.eTag, eTag) || other.eTag == eTag) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.storageClass, storageClass) ||
                other.storageClass == storageClass));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, eTag, key, lastModified, owner, size, storageClass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContentsCopyWith<_$_Contents> get copyWith =>
      __$$_ContentsCopyWithImpl<_$_Contents>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentsToJson(
      this,
    );
  }
}

abstract class _Contents implements Contents {
  const factory _Contents(
      {@JsonKey(name: 'ETag') final String? eTag,
      @JsonKey(name: 'Key') final String? key,
      @JsonKey(name: 'LastModified') final DateTime? lastModified,
      @JsonKey(name: 'Owner') final Owner? owner,
      @JsonKey(name: 'Size') final String? size,
      @JsonKey(name: 'StorageClass') final String? storageClass}) = _$_Contents;

  factory _Contents.fromJson(Map<String, dynamic> json) = _$_Contents.fromJson;

  @override
  @JsonKey(name: 'ETag')
  String? get eTag;
  @override
  @JsonKey(name: 'Key')
  String? get key;
  @override
  @JsonKey(name: 'LastModified')
  DateTime? get lastModified;
  @override
  @JsonKey(name: 'Owner')
  Owner? get owner;
  @override
  @JsonKey(name: 'Size')
  String? get size;
  @override
  @JsonKey(name: 'StorageClass')
  String? get storageClass;
  @override
  @JsonKey(ignore: true)
  _$$_ContentsCopyWith<_$_Contents> get copyWith =>
      throw _privateConstructorUsedError;
}
