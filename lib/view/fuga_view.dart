import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/fuga_data.dart';
import '../data/hogehoge_data.dart';
import '../main.dart';
import '../model/fuga_model.dart';
import '../model/hogehoge_model.dart';

class FugaView {
  Widget build( BuildContext context, WidgetRef ref, double contentWidth ){
    HogehogeData hogehogeData = ref.watch(hogehogeProvider);
    int hogehoge = hogehogeData.hogehoge;

    FugaData fugaData = ref.watch(fugaProvider);
    String hoge = fugaData.hoge;
    int fuga = fugaData.fuga;

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

                    String routeName = '/piyo';
                    Navigator.pushAndRemoveUntil(context, PageRouteBuilder(
                      settings: RouteSettings(name: routeName),
                      pageBuilder: (_,__,___) => MyApp.routes[routeName]!(context),
                      transitionDuration: const Duration(seconds: 0),
                    ), (_) => false);
                  },
                  child: Text(
                    "go piyo",
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
                    FugaModel fugaModel = ref.watch(fugaProvider.notifier);
                    fugaModel.setHoge('def');
                    fugaModel.setFuga(456);
                  },
                  child: Text(
                    "SET",
                    style: TextStyle( fontSize: contentWidth / 16 ),
                  )
              )
          ),
          SizedBox( height: 20 ),
          Text( 'hogehogeData $hogehoge', style: TextStyle( fontSize: contentWidth / 16 ) ),
          Text( 'fugaData ' + hoge, style: TextStyle( fontSize: contentWidth / 16 ) ),
          Text( 'fugaData $fuga', style: TextStyle( fontSize: contentWidth / 16 ) ),
        ] );
  }
}
