import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/fuga_data.dart';

class FugaModel extends StateNotifier<FugaData> {
  Reader read;
  FugaModel(this.read) : super(const FugaData());

  // 状態を更新する関数
  setHoge(String hoge) {
    state = state.copyWith(hoge: hoge); // 状態を更新
  }
  setFuga(int fuga) {
    state = state.copyWith(fuga: fuga); // 状態を更新
  }
}

// Riverpodのプロバイダー
final fugaProvider = StateNotifierProvider<FugaModel, FugaData>((ref) => FugaModel(ref.read));
