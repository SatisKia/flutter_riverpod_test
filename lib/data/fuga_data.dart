import 'package:freezed_annotation/freezed_annotation.dart';

part 'fuga_data.freezed.dart'; // 生成されるファイル名

@freezed
class FugaData with _$FugaData {
  const factory FugaData({
    // 状態をもつ変数
    @Default('aaa') String hoge,
    @Default(111) int fuga,
  }) = _FugaData;
}
