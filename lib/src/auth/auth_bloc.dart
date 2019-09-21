import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flut_test/src/auth/auth_model.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flut_test/src/auth/auth_repository.dart';

class AuthBloc extends BlocBase{
  final AuthRepository _repository = AuthRepository();
  final BehaviorSubject<AuthModel> _subject =
  BehaviorSubject<AuthModel>();

  getUser() async {
    AuthModel response = await _repository.getUser();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<AuthModel> get subject => _subject;
}

final bloc = AuthBloc();