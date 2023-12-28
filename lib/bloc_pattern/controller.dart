import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:state_manage/bloc_pattern/state.dart';

class ImcBlocPatternController {
  final _imcStreamController = StreamController<ImcState>.broadcast()
    ..add(ImcState(imc: 0));
  Future<void> calcularImc(
      {required double peso, required double altura}) async {
   
     
  }

  Stream<ImcState> get imcOut => _imcStreamController.stream;

  void dispose() {
    _imcStreamController.close();
  }
}
