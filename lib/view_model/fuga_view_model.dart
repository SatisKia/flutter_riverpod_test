import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view/fuga_view.dart';

class FugaViewModel extends ConsumerWidget {
  const FugaViewModel( {Key? key} ) : super(key: key);

  @override
  Widget build( BuildContext context, WidgetRef ref ) {
    double contentWidth = MediaQuery.of( context ).size.width;

    FugaView view = FugaView();

    return Scaffold(
      appBar: AppBar(
          title: Text( 'fuga', style: TextStyle( fontSize: contentWidth / 16 ) ),
          toolbarHeight: contentWidth / 8
      ),
      body: view.build( context, ref, contentWidth ), // ビューにWidgetRefを渡す
    );
  }
}
