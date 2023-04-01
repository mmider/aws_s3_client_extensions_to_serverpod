// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prefix.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Prefix _$PrefixFromJson(Map<String, dynamic> json) {
  return _Prefix.fromJson(json);
}

/// @nodoc
mixin _$Prefix {
  @JsonKey(name: 'Prefix')
  String get prefix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrefixCopyWith<Prefix> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrefixCopyWith<$Res> {
  factory $PrefixCopyWith(Prefix value, $Res Function(Prefix) then) =
      _$PrefixCopyWithImpl<$Res, Prefix>;
  @useResult
  $Res call({@JsonKey(name: 'Prefix') String prefix});
}

/// @nodoc
class _$PrefixCopyWithImpl<$Res, $Val extends Prefix>
    implements $PrefixCopyWith<$Res> {
  _$PrefixCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
  }) {
    return _then(_value.copyWith(
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrefixCopyWith<$Res> implements $PrefixCopyWith<$Res> {
  factory _$$_PrefixCopyWith(_$_Prefix value, $Res Function(_$_Prefix) then) =
      __$$_PrefixCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Prefix') String prefix});
}

/// @nodoc
class __$$_PrefixCopyWithImpl<$Res>
    extends _$PrefixCopyWithImpl<$Res, _$_Prefix>
    implements _$$_PrefixCopyWith<$Res> {
  __$$_PrefixCopyWithImpl(_$_Prefix _value, $Res Function(_$_Prefix) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
  }) {
    return _then(_$_Prefix(
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Prefix implements _Prefix {
  const _$_Prefix({@JsonKey(name: 'Prefix') required this.prefix});

  factory _$_Prefix.fromJson(Map<String, dynamic> json) =>
      _$$_PrefixFromJson(json);

  @override
  @JsonKey(name: 'Prefix')
  final String prefix;

  @override
  String toString() {
    return 'Prefix(prefix: $prefix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Prefix &&
            (identical(other.prefix, prefix) || other.prefix == prefix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, prefix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrefixCopyWith<_$_Prefix> get copyWith =>
      __$$_PrefixCopyWithImpl<_$_Prefix>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrefixToJson(
      this,
    );
  }
}

abstract class _Prefix implements Prefix {
  const factory _Prefix(
      {@JsonKey(name: 'Prefix') required final String prefix}) = _$_Prefix;

  factory _Prefix.fromJson(Map<String, dynamic> json) = _$_Prefix.fromJson;

  @override
  @JsonKey(name: 'Prefix')
  String get prefix;
  @override
  @JsonKey(ignore: true)
  _$$_PrefixCopyWith<_$_Prefix> get copyWith =>
      throw _privateConstructorUsedError;
}
