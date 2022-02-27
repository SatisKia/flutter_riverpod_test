import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/hoge_data.dart';

class PiyoModel extends StateNotifier<HogeData> {
  PiyoModel() : super(const HogeData());

  // 状態を更新する関数
  setHoge(String hoge) {
    state = state.copyWith(hoge: hoge); // 状態を更新
  }
  setFuga(int fuga) {
    state = state.copyWith(fuga: fuga); // 状態を更新
  }
}

// Riverpodのプロバイダー
final piyoProvider = StateNotifierProvider<PiyoModel, HogeData>((ref) => PiyoModel());
