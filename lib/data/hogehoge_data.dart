import 'package:freezed_annotation/freezed_annotation.dart';

part 'hogehoge_data.freezed.dart'; // 生成されるファイル名

@freezed
class HogehogeData with _$HogehogeData {
  const factory HogehogeData({
    // 状態をもつ変数
    @Default(0) int hogehoge,
  }) = _HogehogeData;
}
