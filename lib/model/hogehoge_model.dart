import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/hogehoge_data.dart';

class HogehogeModel extends StateNotifier<HogehogeData> {
  HogehogeModel() : super(const HogehogeData());

  // 状態を更新する関数
  increment() {
    state = state.copyWith(hogehoge: state.hogehoge + 1); // 状態を更新
  }
}

// Riverpodのプロバイダー
final hogehogeProvider = StateNotifierProvider<HogehogeModel, HogehogeData>((ref) => HogehogeModel());
