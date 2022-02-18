import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/hoge_data.dart';

class HogeModel extends StateNotifier<HogeData> {
  Reader read;
  HogeModel(this.read) : super(HogeData());

  // 状態を更新する関数
  setHoge(String hoge) {
    state = state.copyWith(hoge: hoge); // 状態を更新
  }
  setFuga(int fuga) {
    state = state.copyWith(fuga: fuga); // 状態を更新
  }
}

// Riverpodのプロバイダー
final hogeProvider = StateNotifierProvider<HogeModel, HogeData>((ref) => HogeModel(ref.read));
