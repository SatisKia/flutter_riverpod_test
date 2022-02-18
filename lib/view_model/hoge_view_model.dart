import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view/hoge_view.dart';

class HogeViewModel extends ConsumerWidget {
  final HogeView view;
  const HogeViewModel( this.view, {Key? key} ) : super(key: key);

  @override
  Widget build( BuildContext context, WidgetRef ref ) {
    double contentWidth  = MediaQuery.of( context ).size.width;
    double contentHeight = MediaQuery.of( context ).size.height - MediaQuery.of( context ).padding.top - MediaQuery.of( context ).padding.bottom;

    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 0
        ),
        body: view.build( ref, contentWidth ), // ビューにWidgetRefを渡す
    );
  }
}
