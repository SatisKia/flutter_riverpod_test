import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/hoge_data.dart';
import '../model/hoge_model.dart';

class HogeView {
  Widget build( WidgetRef ref, double contentWidth ){
    HogeData hogeData = ref.watch(hogeProvider);
    String? hoge = hogeData.hoge;
    int? fuga = hogeData.fuga;

    return Column(
        children: [
          SizedBox(
              width: contentWidth,
              height: contentWidth / 8,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                  ),
                  onPressed: (){
                    HogeModel hogeModel = ref.watch(hogeProvider.notifier);
                    hogeModel.setHoge('abc');
                    hogeModel.setFuga(123);
                  },
                  child: Text(
                    "SET",
                    style: TextStyle( fontSize: contentWidth / 16 ),
                  )
              )
          ),
          (hoge != null) ? Text( hoge, style: TextStyle( fontSize: contentWidth / 16 ) ) : Container(),
          (fuga != null) ? Text( '$fuga', style: TextStyle( fontSize: contentWidth / 16 ) ) : Container(),
        ] );
  }
}
