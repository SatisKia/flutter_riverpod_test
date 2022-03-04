import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/hoge_data.dart';
import '../data/hogehoge_data.dart';
import '../main.dart';
import '../model/hoge_model.dart';
import '../model/hogehoge_model.dart';

class HogeView {
  Widget build( WidgetRef ref, double contentWidth ) {
    debugPrint('HogeView build');
    return Column(
        children: [
          HogeViewWidgetA( contentWidth ),
          HogeViewWidgetB( contentWidth ),
          HogeViewWidgetC( contentWidth ),
          HogeViewWidgetD( contentWidth ),
          HogeViewWidgetE( contentWidth ),
        ]
    );
  }
}

class HogeViewWidgetA extends ConsumerWidget {
  final double contentWidth;
  const HogeViewWidgetA( this.contentWidth, {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('HogeViewWidgetA build');
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
                String routeName = '/fuga';
                Navigator.pushAndRemoveUntil(context, PageRouteBuilder(
                  settings: RouteSettings(name: routeName),
                  pageBuilder: (_,__,___) => MyApp.routes[routeName]!(context),
                  transitionDuration: const Duration(seconds: 0),
                ), (_) => false);
              },
              child: Text(
                "Go fuga",
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
                primary: Colors.blueAccent.shade400,
                onPrimary: Colors.white,
              ),
              onPressed: (){
                HogeModel hogeModel = ref.read(hogeProvider.notifier);
                hogeModel.setHoge('abc');
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
                primary: Colors.blueAccent.shade200,
                onPrimary: Colors.white,
              ),
              onPressed: (){
                HogeModel hogeModel = ref.read(hogeProvider.notifier);
                hogeModel.setFuga(123);
              },
              child: Text(
                "setFuga",
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
                int value = readHogera(ref);
                updateHogera(ref, value + 1);
              },
              child: Text(
                "update globalHogera",
                style: TextStyle( fontSize: contentWidth / 16 ),
              )
          )
      ),
      SizedBox( height: 20 ),
    ] );
  }
}

class HogeViewWidgetB extends ConsumerWidget {
  final double contentWidth;
  const HogeViewWidgetB( this.contentWidth, {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('HogeViewWidgetB build');

    HogehogeData hogehogeData = ref.watch(hogehogeProvider);
    int hogehoge = hogehogeData.hogehoge;

    return Column( children: [
      Text( 'hogehogeData $hogehoge', style: TextStyle( fontSize: contentWidth / 16 ) ),
    ] );
  }
}

class HogeViewWidgetC extends ConsumerWidget {
  final double contentWidth;
  const HogeViewWidgetC( this.contentWidth, {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('HogeViewWidgetC build');

    HogeData hogeData = ref.watch(hogeProvider);
    String? hoge = hogeData.hoge;

    return Column( children: [
      Text( 'hogeData ' + ((hoge == null) ? 'null' : hoge), style: TextStyle( fontSize: contentWidth / 16 ) ),
    ] );
  }
}

class HogeViewWidgetD extends ConsumerWidget {
  final double contentWidth;
  const HogeViewWidgetD( this.contentWidth, {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('HogeViewWidgetD build');

    HogeData hogeData = ref.watch(hogeProvider);
    int? fuga = hogeData.fuga;

    return Column( children: [
      Text( 'hogeData ' + ((fuga == null) ? 'null' : '$fuga'), style: TextStyle( fontSize: contentWidth / 16 ) ),
    ] );
  }
}

class HogeViewWidgetE extends ConsumerWidget {
  final double contentWidth;
  const HogeViewWidgetE( this.contentWidth, {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('HogeViewWidgetE build');

    final int hogera = watchHogera(ref);

    return Column( children: [
      Text( 'hogera $hogera', style: TextStyle( fontSize: contentWidth / 16 ) ),
    ] );
  }
}
