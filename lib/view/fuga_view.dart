import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/fuga_data.dart';
import '../data/hogehoge_data.dart';
import '../main.dart';
import '../model/fuga_model.dart';
import '../model/hogehoge_model.dart';

class FugaView {
  Widget build( WidgetRef ref, double contentWidth ) {
    debugPrint('FugaView build');
    return Column(
        children: [
          FugaViewWidgetA( contentWidth ),
          FugaViewWidgetB( contentWidth ),
          FugaViewWidgetC( contentWidth ),
          FugaViewWidgetD( contentWidth ),
        ]
    );
  }
}

class FugaViewWidgetA extends ConsumerWidget {
  final double contentWidth;
  const FugaViewWidgetA( this.contentWidth, {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('FugaViewWidgetA build');
    return Column( children: [
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
                String routeName = '/piyo';
                Navigator.pushAndRemoveUntil(context, PageRouteBuilder(
                  settings: RouteSettings(name: routeName),
                  pageBuilder: (_,__,___) => MyApp.routes[routeName]!(context),
                  transitionDuration: const Duration(seconds: 0),
                ), (_) => false);
              },
              child: Text(
                "Go piyo",
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
                primary: Colors.blueAccent.shade400,
                onPrimary: Colors.white,
              ),
              onPressed: (){
                HogehogeModel hogehogeModel = ref.read(hogehogeProvider.notifier);
                hogehogeModel.increment();
              },
              child: Text(
                "increment",
                style: TextStyle( fontSize: contentWidth / 16 ),
              )
          )
      ),
      SizedBox(
          width: contentWidth,
          height: contentWidth / 8,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent.shade200,
                onPrimary: Colors.white,
              ),
              onPressed: (){
                FugaModel fugaModel = ref.read(fugaProvider.notifier);
                fugaModel.setHoge('def');
              },
              child: Text(
                "setHoge",
                style: TextStyle( fontSize: contentWidth / 16 ),
              )
          )
      ),
      SizedBox(
          width: contentWidth,
          height: contentWidth / 8,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent.shade100,
                onPrimary: Colors.white,
              ),
              onPressed: (){
                FugaModel fugaModel = ref.read(fugaProvider.notifier);
                fugaModel.setFuga(456);
              },
              child: Text(
                "setFuga",
                style: TextStyle( fontSize: contentWidth / 16 ),
              )
          )
      ),
      SizedBox( height: 20 ),
    ] );
  }
}

class FugaViewWidgetB extends ConsumerWidget {
  final double contentWidth;
  const FugaViewWidgetB( this.contentWidth, {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('FugaViewWidgetB build');

    HogehogeData hogehogeData = ref.watch(hogehogeProvider);
    int hogehoge = hogehogeData.hogehoge;

    return Column( children: [
      Text( 'hogehogeData $hogehoge', style: TextStyle( fontSize: contentWidth / 16 ) ),
    ] );
  }
}

class FugaViewWidgetC extends ConsumerWidget {
  final double contentWidth;
  const FugaViewWidgetC( this.contentWidth, {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('FugaViewWidgetC build');

    FugaData fugaData = ref.watch(fugaProvider);
    String hoge = fugaData.hoge;

    return Column( children: [
      Text( 'fugaData ' + hoge, style: TextStyle( fontSize: contentWidth / 16 ) ),
    ] );
  }
}

class FugaViewWidgetD extends ConsumerWidget {
  final double contentWidth;
  const FugaViewWidgetD( this.contentWidth, {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('FugaViewWidgetD build');

    FugaData fugaData = ref.watch(fugaProvider);
    int fuga = fugaData.fuga;

    return Column( children: [
      Text( 'fugaData $fuga', style: TextStyle( fontSize: contentWidth / 16 ) ),
    ] );
  }
}
