import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view/hoge_view.dart';

class HogeViewModel extends ConsumerWidget {
  const HogeViewModel( {Key? key} ) : super(key: key);

  @override
  Widget build( BuildContext context, WidgetRef ref ) {
    double contentWidth = MediaQuery.of( context ).size.width;

    HogeView view = HogeView();

    return Scaffold(
        appBar: AppBar(
            title: Text( 'hoge', style: TextStyle( fontSize: contentWidth / 16 ) ),
            toolbarHeight: contentWidth / 8
        ),
        body: view.build( context, ref, contentWidth ), // ビューにWidgetRefを渡す
    );
  }
}
