import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flut_test/src/auth/auth_event.dart';

class AuthBloc extends BlocBase {
  //dispose will be called automatically by closing its streams
  final _loginStateController = StreamController();
  StreamSink get _shit => _loginStateController.sink;
  Stream get user  => _loginStateController.stream;
  final _loginEventController = StreamController<AuthEvent>();
  Sink<AuthEvent> get loginEventSink => _loginEventController.sink;

  AuthBloc() {
    _loginEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(AuthEvent event) {
    _shit.add('sdfs');
  }

  @override
  void dispose() {
    super.dispose();
    _loginStateController.close();
    _loginEventController.close();
  }
}
