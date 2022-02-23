import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/hoge_view_model.dart';
import '../view_model/fuga_view_model.dart';
import '../view_model/piyo_view_model.dart';

void main() {
  runApp(
      ProviderScope(
          child: MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static Map<String, StatefulWidget Function(BuildContext context)> routes = {
    '/': (BuildContext context) => const HogeViewModel(),
    '/fuga': (BuildContext context) => const FugaViewModel(),
    '/piyo': (BuildContext context) => const PiyoViewModel(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: routes
    );
  }
}
