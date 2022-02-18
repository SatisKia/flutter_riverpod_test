import 'package:freezed_annotation/freezed_annotation.dart';

part 'hoge_data.freezed.dart'; // 生成されるファイル名

@freezed
class HogeData with _$HogeData {
  const factory HogeData({
    // 状態をもつ変数
    String? hoge,
    int? fuga,
  }) = _HogeData;
}
