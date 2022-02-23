import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/hoge_data.dart';
import '../data/hogehoge_data.dart';
import '../main.dart';
import '../model/hogehoge_model.dart';
import '../model/piyo_model.dart';

class PiyoView {
  Widget build( WidgetRef ref, double contentWidth ) {
    debugPrint('PiyoView build');
    return Column( children: [
      PiyoViewWidgetA( contentWidth ),
      PiyoViewWidgetB( contentWidth ),
      PiyoViewWidgetC( contentWidth ),
      PiyoViewWidgetD( contentWidth ),
    ] );
  }
}

class PiyoViewWidgetA extends ConsumerWidget {
  final double contentWidth;
  const PiyoViewWidgetA( this.contentWidth, {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('PiyoViewWidgetA build');
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
                String routeName = '/';
                Navigator.pushAndRemoveUntil(context, PageRouteBuilder(
                  settings: RouteSettings(name: routeName),
                  pageBuilder: (_,__,___) => MyApp.routes[routeName]!(context),
                  transitionDuration: const Duration(seconds: 0),
                ), (_) => false);
              },
              child: Text(
                "Go hoge",
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
                PiyoModel piyoModel = ref.read(piyoProvider.notifier);
                piyoModel.setHoge('ghi');
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
                PiyoModel piyoModel = ref.read(piyoProvider.notifier);
                piyoModel.setFuga(789);
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

class PiyoViewWidgetB extends ConsumerWidget {
  final double contentWidth;
  const PiyoViewWidgetB( this.contentWidth, {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('PiyoViewWidgetB build');

    HogehogeData hogehogeData = ref.watch(hogehogeProvider);
    int hogehoge = hogehogeData.hogehoge;

    return Column( children: [
      Text( 'hogehogeData $hogehoge', style: TextStyle( fontSize: contentWidth / 16 ) ),
    ] );
  }
}

class PiyoViewWidgetC extends ConsumerWidget {
  final double contentWidth;
  const PiyoViewWidgetC( this.contentWidth, {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('PiyoViewWidgetC build');

    HogeData hogeData = ref.watch(piyoProvider);
    String? hoge = hogeData.hoge;

    return Column( children: [
      Text( 'hogeData ' + ((hoge == null) ? 'null' : hoge), style: TextStyle( fontSize: contentWidth / 16 ) ),
    ] );
  }
}

class PiyoViewWidgetD extends ConsumerWidget {
  final double contentWidth;
  const PiyoViewWidgetD( this.contentWidth, {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('PiyoViewWidgetD build');

    HogeData hogeData = ref.watch(piyoProvider);
    int? fuga = hogeData.fuga;

    return Column( children: [
      Text( 'hogeData ' + ((fuga == null) ? 'null' : '$fuga'), style: TextStyle( fontSize: contentWidth / 16 ) ),
    ] );
  }
}
