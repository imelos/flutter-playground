import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flut_test/src/auth/auth_event.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rxdart/rxdart.dart';

class AuthBloc extends BlocBase {
  String user = 'userbla';
  onChangeValue(String v) {
    user = v;
    notifyListeners();
  }
}
