import 'package:flut_test/src/auth/auth_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class AuthModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AuthBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => Container();

  static Inject get to => Inject<AuthModule>.of();
}
