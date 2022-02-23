import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/hoge_model.dart';
import '../view/piyo_view.dart';

class PiyoViewModel extends ConsumerStatefulWidget {
  const PiyoViewModel( {Key? key} ) : super(key: key);

  @override
  PiyoViewState createState() => PiyoViewState();
}

class PiyoViewState extends ConsumerState with WidgetsBindingObserver {
  final PiyoView view = PiyoView();

  double contentWidth  = 0.0;
  double contentHeight = 0.0;

  @override
  void initState(){
    super.initState();
    debugPrint('onInit');
    WidgetsBinding.instance!.addObserver(this);
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // ウィジェットのビルド完了
      debugPrint('onReady');

      HogeModel hogeModel = ref.watch(hogeProvider.notifier);
      hogeModel.setHoge('xyz');
      hogeModel.setFuga(999);
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    debugPrint('onDispose');
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('onEnter');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if(state == AppLifecycleState.detached){
      debugPrint('onLeave');
    }else if(state == AppLifecycleState.paused) {
      debugPrint('onPause');
    }else if(state == AppLifecycleState.resumed){
      debugPrint('onResume');
    }
  }

  @override
  Widget build( BuildContext context ) {
    contentWidth = MediaQuery.of( context ).size.width;

    return Scaffold(
      appBar: AppBar(
          title: Text( 'piyo', style: TextStyle( fontSize: contentWidth / 16 ) ),
          toolbarHeight: contentWidth / 8
      ),
      body: view.build( context, ref, contentWidth ), // ビューにWidgetRefを渡す
    );
  }
}
