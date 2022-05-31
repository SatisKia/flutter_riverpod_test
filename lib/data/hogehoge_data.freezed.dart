// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hogehoge_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HogehogeData {
// 状態をもつ変数
  int get hogehoge => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HogehogeDataCopyWith<HogehogeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HogehogeDataCopyWith<$Res> {
  factory $HogehogeDataCopyWith(
          HogehogeData value, $Res Function(HogehogeData) then) =
      _$HogehogeDataCopyWithImpl<$Res>;
  $Res call({int hogehoge});
}

/// @nodoc
class _$HogehogeDataCopyWithImpl<$Res> implements $HogehogeDataCopyWith<$Res> {
  _$HogehogeDataCopyWithImpl(this._value, this._then);

  final HogehogeData _value;
  // ignore: unused_field
  final $Res Function(HogehogeData) _then;

  @override
  $Res call({
    Object? hogehoge = freezed,
  }) {
    return _then(_value.copyWith(
      hogehoge: hogehoge == freezed
          ? _value.hogehoge
          : hogehoge // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_HogehogeDataCopyWith<$Res>
    implements $HogehogeDataCopyWith<$Res> {
  factory _$$_HogehogeDataCopyWith(
          _$_HogehogeData value, $Res Function(_$_HogehogeData) then) =
      __$$_HogehogeDataCopyWithImpl<$Res>;
  @override
  $Res call({int hogehoge});
}

/// @nodoc
class __$$_HogehogeDataCopyWithImpl<$Res>
    extends _$HogehogeDataCopyWithImpl<$Res>
    implements _$$_HogehogeDataCopyWith<$Res> {
  __$$_HogehogeDataCopyWithImpl(
      _$_HogehogeData _value, $Res Function(_$_HogehogeData) _then)
      : super(_value, (v) => _then(v as _$_HogehogeData));

  @override
  _$_HogehogeData get _value => super._value as _$_HogehogeData;

  @override
  $Res call({
    Object? hogehoge = freezed,
  }) {
    return _then(_$_HogehogeData(
      hogehoge: hogehoge == freezed
          ? _value.hogehoge
          : hogehoge // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HogehogeData implements _HogehogeData {
  const _$_HogehogeData({this.hogehoge = 0});

// 状態をもつ変数
  @override
  @JsonKey()
  final int hogehoge;

  @override
  String toString() {
    return 'HogehogeData(hogehoge: $hogehoge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HogehogeData &&
            const DeepCollectionEquality().equals(other.hogehoge, hogehoge));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(hogehoge));

  @JsonKey(ignore: true)
  @override
  _$$_HogehogeDataCopyWith<_$_HogehogeData> get copyWith =>
      __$$_HogehogeDataCopyWithImpl<_$_HogehogeData>(this, _$identity);
}

abstract class _HogehogeData implements HogehogeData {
  const factory _HogehogeData({final int hogehoge}) = _$_HogehogeData;

  @override // 状態をもつ変数
  int get hogehoge => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HogehogeDataCopyWith<_$_HogehogeData> get copyWith =>
      throw _privateConstructorUsedError;
}
