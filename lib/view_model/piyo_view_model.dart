import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/piyo_model.dart';
import '../view/piyo_view.dart';

class PiyoViewModel extends ConsumerStatefulWidget {
  const PiyoViewModel( {Key? key} ) : super(key: key);

  @override
  PiyoViewState createState() => PiyoViewState();
}

class PiyoViewState extends ConsumerState with WidgetsBindingObserver {
  double contentWidth  = 0.0;
  double contentHeight = 0.0;

  // ローカル
  final StateProvider<int> _hogeraProvider = StateProvider<int>((_) => 0);
  int readHogera(WidgetRef ref) => ref.read(_hogeraProvider);
  int watchHogera(WidgetRef ref) => ref.watch(_hogeraProvider);
  void updateHogera(WidgetRef ref, int value) {
    ref.read(_hogeraProvider.state).update((_) => value);
  }

  @override
  void initState(){
    super.initState();
    debugPrint('onInit');
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // ウィジェットのビルド完了
      debugPrint('onReady');

      PiyoModel piyoModel = ref.read(piyoProvider.notifier);
      piyoModel.setHoge('xyz');
      piyoModel.setFuga(999);
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
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
    debugPrint('PiyoViewState build');

    contentWidth = MediaQuery.of( context ).size.width;

    return Scaffold(
      appBar: AppBar(
          title: Text( 'piyo', style: TextStyle( fontSize: contentWidth / 16 ) ),
          toolbarHeight: contentWidth / 8
      ),
      body: PiyoView().build( ref, this ), // ビューにWidgetRefを渡す
    );
  }
}
