// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_bucket_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListBucketResult _$ListBucketResultFromJson(Map<String, dynamic> json) {
  return _ListBucketResult.fromJson(json);
}

/// @nodoc
mixin _$ListBucketResult {
  @BoolConverter()
  @JsonKey(name: 'IsTruncated')
  bool get isTruncated => throw _privateConstructorUsedError;
  @JsonKey(name: 'Contents')
  List<Contents> get contents => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Prefix')
  String? get prefix => throw _privateConstructorUsedError;
  @JsonKey(name: 'Delimiter')
  String? get delimiter => throw _privateConstructorUsedError;
  @NullableIntConverter()
  @JsonKey(name: 'MaxKeys')
  int? get maxKeys => throw _privateConstructorUsedError;
  @NullableIntConverter()
  @JsonKey(name: 'KeyCount')
  int? get keyCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'EncodingType')
  String? get encodingType => throw _privateConstructorUsedError;
  @JsonKey(name: 'ContinuationToken')
  String? get continuationToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'NextContinuationToken')
  String? get nextContinuationToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'StartAfter')
  String? get startAfter => throw _privateConstructorUsedError;
  @JsonKey(name: 'CommonPrefixes')
  List<Prefix> get commonPrefixes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListBucketResultCopyWith<ListBucketResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListBucketResultCopyWith<$Res> {
  factory $ListBucketResultCopyWith(
          ListBucketResult value, $Res Function(ListBucketResult) then) =
      _$ListBucketResultCopyWithImpl<$Res, ListBucketResult>;
  @useResult
  $Res call(
      {@BoolConverter() @JsonKey(name: 'IsTruncated') bool isTruncated,
      @JsonKey(name: 'Contents') List<Contents> contents,
      @JsonKey(name: 'Name') String name,
      @JsonKey(name: 'Prefix') String? prefix,
      @JsonKey(name: 'Delimiter') String? delimiter,
      @NullableIntConverter() @JsonKey(name: 'MaxKeys') int? maxKeys,
      @NullableIntConverter() @JsonKey(name: 'KeyCount') int? keyCount,
      @JsonKey(name: 'EncodingType') String? encodingType,
      @JsonKey(name: 'ContinuationToken') String? continuationToken,
      @JsonKey(name: 'NextContinuationToken') String? nextContinuationToken,
      @JsonKey(name: 'StartAfter') String? startAfter,
      @JsonKey(name: 'CommonPrefixes') List<Prefix> commonPrefixes});
}

/// @nodoc
class _$ListBucketResultCopyWithImpl<$Res, $Val extends ListBucketResult>
    implements $ListBucketResultCopyWith<$Res> {
  _$ListBucketResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTruncated = null,
    Object? contents = null,
    Object? name = null,
    Object? prefix = freezed,
    Object? delimiter = freezed,
    Object? maxKeys = freezed,
    Object? keyCount = freezed,
    Object? encodingType = freezed,
    Object? continuationToken = freezed,
    Object? nextContinuationToken = freezed,
    Object? startAfter = freezed,
    Object? commonPrefixes = null,
  }) {
    return _then(_value.copyWith(
      isTruncated: null == isTruncated
          ? _value.isTruncated
          : isTruncated // ignore: cast_nullable_to_non_nullable
              as bool,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<Contents>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      delimiter: freezed == delimiter
          ? _value.delimiter
          : delimiter // ignore: cast_nullable_to_non_nullable
              as String?,
      maxKeys: freezed == maxKeys
          ? _value.maxKeys
          : maxKeys // ignore: cast_nullable_to_non_nullable
              as int?,
      keyCount: freezed == keyCount
          ? _value.keyCount
          : keyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      encodingType: freezed == encodingType
          ? _value.encodingType
          : encodingType // ignore: cast_nullable_to_non_nullable
              as String?,
      continuationToken: freezed == continuationToken
          ? _value.continuationToken
          : continuationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      nextContinuationToken: freezed == nextContinuationToken
          ? _value.nextContinuationToken
          : nextContinuationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      startAfter: freezed == startAfter
          ? _value.startAfter
          : startAfter // ignore: cast_nullable_to_non_nullable
              as String?,
      commonPrefixes: null == commonPrefixes
          ? _value.commonPrefixes
          : commonPrefixes // ignore: cast_nullable_to_non_nullable
              as List<Prefix>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListBucketResultCopyWith<$Res>
    implements $ListBucketResultCopyWith<$Res> {
  factory _$$_ListBucketResultCopyWith(
          _$_ListBucketResult value, $Res Function(_$_ListBucketResult) then) =
      __$$_ListBucketResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@BoolConverter() @JsonKey(name: 'IsTruncated') bool isTruncated,
      @JsonKey(name: 'Contents') List<Contents> contents,
      @JsonKey(name: 'Name') String name,
      @JsonKey(name: 'Prefix') String? prefix,
      @JsonKey(name: 'Delimiter') String? delimiter,
      @NullableIntConverter() @JsonKey(name: 'MaxKeys') int? maxKeys,
      @NullableIntConverter() @JsonKey(name: 'KeyCount') int? keyCount,
      @JsonKey(name: 'EncodingType') String? encodingType,
      @JsonKey(name: 'ContinuationToken') String? continuationToken,
      @JsonKey(name: 'NextContinuationToken') String? nextContinuationToken,
      @JsonKey(name: 'StartAfter') String? startAfter,
      @JsonKey(name: 'CommonPrefixes') List<Prefix> commonPrefixes});
}

/// @nodoc
class __$$_ListBucketResultCopyWithImpl<$Res>
    extends _$ListBucketResultCopyWithImpl<$Res, _$_ListBucketResult>
    implements _$$_ListBucketResultCopyWith<$Res> {
  __$$_ListBucketResultCopyWithImpl(
      _$_ListBucketResult _value, $Res Function(_$_ListBucketResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTruncated = null,
    Object? contents = null,
    Object? name = null,
    Object? prefix = freezed,
    Object? delimiter = freezed,
    Object? maxKeys = freezed,
    Object? keyCount = freezed,
    Object? encodingType = freezed,
    Object? continuationToken = freezed,
    Object? nextContinuationToken = freezed,
    Object? startAfter = freezed,
    Object? commonPrefixes = null,
  }) {
    return _then(_$_ListBucketResult(
      isTruncated: null == isTruncated
          ? _value.isTruncated
          : isTruncated // ignore: cast_nullable_to_non_nullable
              as bool,
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<Contents>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      delimiter: freezed == delimiter
          ? _value.delimiter
          : delimiter // ignore: cast_nullable_to_non_nullable
              as String?,
      maxKeys: freezed == maxKeys
          ? _value.maxKeys
          : maxKeys // ignore: cast_nullable_to_non_nullable
              as int?,
      keyCount: freezed == keyCount
          ? _value.keyCount
          : keyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      encodingType: freezed == encodingType
          ? _value.encodingType
          : encodingType // ignore: cast_nullable_to_non_nullable
              as String?,
      continuationToken: freezed == continuationToken
          ? _value.continuationToken
          : continuationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      nextContinuationToken: freezed == nextContinuationToken
          ? _value.nextContinuationToken
          : nextContinuationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      startAfter: freezed == startAfter
          ? _value.startAfter
          : startAfter // ignore: cast_nullable_to_non_nullable
              as String?,
      commonPrefixes: null == commonPrefixes
          ? _value._commonPrefixes
          : commonPrefixes // ignore: cast_nullable_to_non_nullable
              as List<Prefix>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ListBucketResult implements _ListBucketResult {
  const _$_ListBucketResult(
      {@BoolConverter()
      @JsonKey(name: 'IsTruncated')
          required this.isTruncated,
      @JsonKey(name: 'Contents')
          final List<Contents> contents = const [],
      @JsonKey(name: 'Name')
          required this.name,
      @JsonKey(name: 'Prefix')
          this.prefix,
      @JsonKey(name: 'Delimiter')
          this.delimiter,
      @NullableIntConverter()
      @JsonKey(name: 'MaxKeys')
          this.maxKeys,
      @NullableIntConverter()
      @JsonKey(name: 'KeyCount')
          this.keyCount,
      @JsonKey(name: 'EncodingType')
          this.encodingType,
      @JsonKey(name: 'ContinuationToken')
          this.continuationToken,
      @JsonKey(name: 'NextContinuationToken')
          this.nextContinuationToken,
      @JsonKey(name: 'StartAfter')
          this.startAfter,
      @JsonKey(name: 'CommonPrefixes')
          final List<Prefix> commonPrefixes = const []})
      : _contents = contents,
        _commonPrefixes = commonPrefixes;

  factory _$_ListBucketResult.fromJson(Map<String, dynamic> json) =>
      _$$_ListBucketResultFromJson(json);

  @override
  @BoolConverter()
  @JsonKey(name: 'IsTruncated')
  final bool isTruncated;
  final List<Contents> _contents;
  @override
  @JsonKey(name: 'Contents')
  List<Contents> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  @JsonKey(name: 'Name')
  final String name;
  @override
  @JsonKey(name: 'Prefix')
  final String? prefix;
  @override
  @JsonKey(name: 'Delimiter')
  final String? delimiter;
  @override
  @NullableIntConverter()
  @JsonKey(name: 'MaxKeys')
  final int? maxKeys;
  @override
  @NullableIntConverter()
  @JsonKey(name: 'KeyCount')
  final int? keyCount;
  @override
  @JsonKey(name: 'EncodingType')
  final String? encodingType;
  @override
  @JsonKey(name: 'ContinuationToken')
  final String? continuationToken;
  @override
  @JsonKey(name: 'NextContinuationToken')
  final String? nextContinuationToken;
  @override
  @JsonKey(name: 'StartAfter')
  final String? startAfter;
  final List<Prefix> _commonPrefixes;
  @override
  @JsonKey(name: 'CommonPrefixes')
  List<Prefix> get commonPrefixes {
    if (_commonPrefixes is EqualUnmodifiableListView) return _commonPrefixes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commonPrefixes);
  }

  @override
  String toString() {
    return 'ListBucketResult(isTruncated: $isTruncated, contents: $contents, name: $name, prefix: $prefix, delimiter: $delimiter, maxKeys: $maxKeys, keyCount: $keyCount, encodingType: $encodingType, continuationToken: $continuationToken, nextContinuationToken: $nextContinuationToken, startAfter: $startAfter, commonPrefixes: $commonPrefixes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListBucketResult &&
            (identical(other.isTruncated, isTruncated) ||
                other.isTruncated == isTruncated) &&
            const DeepCollectionEquality().equals(other._contents, _contents) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.delimiter, delimiter) ||
                other.delimiter == delimiter) &&
            (identical(other.maxKeys, maxKeys) || other.maxKeys == maxKeys) &&
            (identical(other.keyCount, keyCount) ||
                other.keyCount == keyCount) &&
            (identical(other.encodingType, encodingType) ||
                other.encodingType == encodingType) &&
            (identical(other.continuationToken, continuationToken) ||
                other.continuationToken == continuationToken) &&
            (identical(other.nextContinuationToken, nextContinuationToken) ||
                other.nextContinuationToken == nextContinuationToken) &&
            (identical(other.startAfter, startAfter) ||
                other.startAfter == startAfter) &&
            const DeepCollectionEquality()
                .equals(other._commonPrefixes, _commonPrefixes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isTruncated,
      const DeepCollectionEquality().hash(_contents),
      name,
      prefix,
      delimiter,
      maxKeys,
      keyCount,
      encodingType,
      continuationToken,
      nextContinuationToken,
      startAfter,
      const DeepCollectionEquality().hash(_commonPrefixes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListBucketResultCopyWith<_$_ListBucketResult> get copyWith =>
      __$$_ListBucketResultCopyWithImpl<_$_ListBucketResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListBucketResultToJson(
      this,
    );
  }
}

abstract class _ListBucketResult implements ListBucketResult {
  const factory _ListBucketResult(
      {@BoolConverter()
      @JsonKey(name: 'IsTruncated')
          required final bool isTruncated,
      @JsonKey(name: 'Contents')
          final List<Contents> contents,
      @JsonKey(name: 'Name')
          required final String name,
      @JsonKey(name: 'Prefix')
          final String? prefix,
      @JsonKey(name: 'Delimiter')
          final String? delimiter,
      @NullableIntConverter()
      @JsonKey(name: 'MaxKeys')
          final int? maxKeys,
      @NullableIntConverter()
      @JsonKey(name: 'KeyCount')
          final int? keyCount,
      @JsonKey(name: 'EncodingType')
          final String? encodingType,
      @JsonKey(name: 'ContinuationToken')
          final String? continuationToken,
      @JsonKey(name: 'NextContinuationToken')
          final String? nextContinuationToken,
      @JsonKey(name: 'StartAfter')
          final String? startAfter,
      @JsonKey(name: 'CommonPrefixes')
          final List<Prefix> commonPrefixes}) = _$_ListBucketResult;

  factory _ListBucketResult.fromJson(Map<String, dynamic> json) =
      _$_ListBucketResult.fromJson;

  @override
  @BoolConverter()
  @JsonKey(name: 'IsTruncated')
  bool get isTruncated;
  @override
  @JsonKey(name: 'Contents')
  List<Contents> get contents;
  @override
  @JsonKey(name: 'Name')
  String get name;
  @override
  @JsonKey(name: 'Prefix')
  String? get prefix;
  @override
  @JsonKey(name: 'Delimiter')
  String? get delimiter;
  @override
  @NullableIntConverter()
  @JsonKey(name: 'MaxKeys')
  int? get maxKeys;
  @override
  @NullableIntConverter()
  @JsonKey(name: 'KeyCount')
  int? get keyCount;
  @override
  @JsonKey(name: 'EncodingType')
  String? get encodingType;
  @override
  @JsonKey(name: 'ContinuationToken')
  String? get continuationToken;
  @override
  @JsonKey(name: 'NextContinuationToken')
  String? get nextContinuationToken;
  @override
  @JsonKey(name: 'StartAfter')
  String? get startAfter;
  @override
  @JsonKey(name: 'CommonPrefixes')
  List<Prefix> get commonPrefixes;
  @override
  @JsonKey(ignore: true)
  _$$_ListBucketResultCopyWith<_$_ListBucketResult> get copyWith =>
      throw _privateConstructorUsedError;
}
