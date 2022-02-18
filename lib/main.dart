import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view/hoge_view.dart';
import '../view_model/hoge_view_model.dart';
import '../view_model/piyo_view_model.dart';

void main() {
  runApp(
      ProviderScope(
          child: MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  Widget home = HogeViewModel(HogeView());
//  Widget home = PiyoViewModel(HogeView());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: home
    );
  }
}
