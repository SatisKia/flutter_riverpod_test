import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/hoge_data.dart';
import '../data/hogehoge_data.dart';
import '../main.dart';
import '../model/hoge_model.dart';
import '../model/hogehoge_model.dart';

class PiyoView {
  Widget build( BuildContext context, WidgetRef ref, double contentWidth ){
    HogehogeData hogehogeData = ref.watch(hogehogeProvider);
    int hogehoge = hogehogeData.hogehoge;

    HogeData hogeData = ref.watch(hogeProvider);
    String? hoge = hogeData.hoge;
    int? fuga = hogeData.fuga;

    return Column(
        children: [
          SizedBox( height: 20 ),
          SizedBox(
              width: contentWidth,
              height: contentWidth / 8,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent.shade700,
                    onPrimary: Colors.white,
                  ),
                  onPressed: (){
                    HogehogeModel hogehogeModel = ref.watch(hogehogeProvider.notifier);
                    hogehogeModel.increment();

                    String routeName = '/';
                    Navigator.pushAndRemoveUntil(context, PageRouteBuilder(
                      settings: RouteSettings(name: routeName),
                      pageBuilder: (_,__,___) => MyApp.routes[routeName]!(context),
                      transitionDuration: const Duration(seconds: 0),
                    ), (_) => false);
                  },
                  child: Text(
                    "go hoge",
                    style: TextStyle( fontSize: contentWidth / 16 ),
                  )
              )
          ),
          SizedBox( height: 20 ),
          SizedBox(
              width: contentWidth,
              height: contentWidth / 8,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent.shade700,
                    onPrimary: Colors.white,
                  ),
                  onPressed: (){
                    HogeModel hogeModel = ref.watch(hogeProvider.notifier);
                    hogeModel.setHoge('ghi');
                    hogeModel.setFuga(789);
                  },
                  child: Text(
                    "SET",
                    style: TextStyle( fontSize: contentWidth / 16 ),
                  )
              )
          ),
          SizedBox( height: 20 ),
          Text( 'hogehogeData $hogehoge', style: TextStyle( fontSize: contentWidth / 16 ) ),
          (hoge != null) ? Text( 'hogeData ' + hoge, style: TextStyle( fontSize: contentWidth / 16 ) ) : Container(),
          (fuga != null) ? Text( 'hogeData $fuga', style: TextStyle( fontSize: contentWidth / 16 ) ) : Container(),
        ] );
  }
}
