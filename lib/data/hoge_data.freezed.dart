// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hoge_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HogeData {
// 状態をもつ変数
  String? get hoge => throw _privateConstructorUsedError;
  int? get fuga => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HogeDataCopyWith<HogeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HogeDataCopyWith<$Res> {
  factory $HogeDataCopyWith(HogeData value, $Res Function(HogeData) then) =
      _$HogeDataCopyWithImpl<$Res>;
  $Res call({String? hoge, int? fuga});
}

/// @nodoc
class _$HogeDataCopyWithImpl<$Res> implements $HogeDataCopyWith<$Res> {
  _$HogeDataCopyWithImpl(this._value, this._then);

  final HogeData _value;
  // ignore: unused_field
  final $Res Function(HogeData) _then;

  @override
  $Res call({
    Object? hoge = freezed,
    Object? fuga = freezed,
  }) {
    return _then(_value.copyWith(
      hoge: hoge == freezed
          ? _value.hoge
          : hoge // ignore: cast_nullable_to_non_nullable
              as String?,
      fuga: fuga == freezed
          ? _value.fuga
          : fuga // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_HogeDataCopyWith<$Res> implements $HogeDataCopyWith<$Res> {
  factory _$$_HogeDataCopyWith(
          _$_HogeData value, $Res Function(_$_HogeData) then) =
      __$$_HogeDataCopyWithImpl<$Res>;
  @override
  $Res call({String? hoge, int? fuga});
}

/// @nodoc
class __$$_HogeDataCopyWithImpl<$Res> extends _$HogeDataCopyWithImpl<$Res>
    implements _$$_HogeDataCopyWith<$Res> {
  __$$_HogeDataCopyWithImpl(
      _$_HogeData _value, $Res Function(_$_HogeData) _then)
      : super(_value, (v) => _then(v as _$_HogeData));

  @override
  _$_HogeData get _value => super._value as _$_HogeData;

  @override
  $Res call({
    Object? hoge = freezed,
    Object? fuga = freezed,
  }) {
    return _then(_$_HogeData(
      hoge: hoge == freezed
          ? _value.hoge
          : hoge // ignore: cast_nullable_to_non_nullable
              as String?,
      fuga: fuga == freezed
          ? _value.fuga
          : fuga // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_HogeData implements _HogeData {
  const _$_HogeData({this.hoge, this.fuga});

// 状態をもつ変数
  @override
  final String? hoge;
  @override
  final int? fuga;

  @override
  String toString() {
    return 'HogeData(hoge: $hoge, fuga: $fuga)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HogeData &&
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
  _$$_HogeDataCopyWith<_$_HogeData> get copyWith =>
      __$$_HogeDataCopyWithImpl<_$_HogeData>(this, _$identity);
}

abstract class _HogeData implements HogeData {
  const factory _HogeData({final String? hoge, final int? fuga}) = _$_HogeData;

  @override // 状態をもつ変数
  String? get hoge => throw _privateConstructorUsedError;
  @override
  int? get fuga => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HogeDataCopyWith<_$_HogeData> get copyWith =>
      throw _privateConstructorUsedError;
}
