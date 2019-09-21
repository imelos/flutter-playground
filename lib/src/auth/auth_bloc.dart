import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';

class AuthBloc extends BlocBase {
  //dispose will be called automatically by closing its streams
  final _loginStateController = StreamController();
  StreamSink get _shit => _loginStateController.sink;
  Stream get user  => _loginStateController.stream;
  @override
  void dispose() {
    super.dispose();
  }
}
