// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fuga_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FugaDataTearOff {
  const _$FugaDataTearOff();

  _FugaData call({String hoge = 'aaa', int fuga = 111}) {
    return _FugaData(
      hoge: hoge,
      fuga: fuga,
    );
  }
}

/// @nodoc
const $FugaData = _$FugaDataTearOff();

/// @nodoc
mixin _$FugaData {
// 状態をもつ変数
  String get hoge => throw _privateConstructorUsedError;
  int get fuga => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FugaDataCopyWith<FugaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FugaDataCopyWith<$Res> {
  factory $FugaDataCopyWith(FugaData value, $Res Function(FugaData) then) =
      _$FugaDataCopyWithImpl<$Res>;
  $Res call({String hoge, int fuga});
}

/// @nodoc
class _$FugaDataCopyWithImpl<$Res> implements $FugaDataCopyWith<$Res> {
  _$FugaDataCopyWithImpl(this._value, this._then);

  final FugaData _value;
  // ignore: unused_field
  final $Res Function(FugaData) _then;

  @override
  $Res call({
    Object? hoge = freezed,
    Object? fuga = freezed,
  }) {
    return _then(_value.copyWith(
      hoge: hoge == freezed
          ? _value.hoge
          : hoge // ignore: cast_nullable_to_non_nullable
              as String,
      fuga: fuga == freezed
          ? _value.fuga
          : fuga // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FugaDataCopyWith<$Res> implements $FugaDataCopyWith<$Res> {
  factory _$FugaDataCopyWith(_FugaData value, $Res Function(_FugaData) then) =
      __$FugaDataCopyWithImpl<$Res>;
  @override
  $Res call({String hoge, int fuga});
}

/// @nodoc
class __$FugaDataCopyWithImpl<$Res> extends _$FugaDataCopyWithImpl<$Res>
    implements _$FugaDataCopyWith<$Res> {
  __$FugaDataCopyWithImpl(_FugaData _value, $Res Function(_FugaData) _then)
      : super(_value, (v) => _then(v as _FugaData));

  @override
  _FugaData get _value => super._value as _FugaData;

  @override
  $Res call({
    Object? hoge = freezed,
    Object? fuga = freezed,
  }) {
    return _then(_FugaData(
      hoge: hoge == freezed
          ? _value.hoge
          : hoge // ignore: cast_nullable_to_non_nullable
              as String,
      fuga: fuga == freezed
          ? _value.fuga
          : fuga // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FugaData implements _FugaData {
  const _$_FugaData({this.hoge = 'aaa', this.fuga = 111});

  @JsonKey()
  @override // 状態をもつ変数
  final String hoge;
  @JsonKey()
  @override
  final int fuga;

  @override
  String toString() {
    return 'FugaData(hoge: $hoge, fuga: $fuga)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FugaData &&
            const DeepCollectionEquality().equals(other.hoge, hoge) &&
            const DeepCollectionEquality().equals(other.fuga, fuga));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hoge),
      const DeepCollectionEquality().hash(fuga));

  @JsonKey(ignore: true)
  @override
  _$FugaDataCopyWith<_FugaData> get copyWith =>
      __$FugaDataCopyWithImpl<_FugaData>(this, _$identity);
}

abstract class _FugaData implements FugaData {
  const factory _FugaData({String hoge, int fuga}) = _$_FugaData;

  @override // 状態をもつ変数
  String get hoge;
  @override
  int get fuga;
  @override
  @JsonKey(ignore: true)
  _$FugaDataCopyWith<_FugaData> get copyWith =>
      throw _privateConstructorUsedError;
}
