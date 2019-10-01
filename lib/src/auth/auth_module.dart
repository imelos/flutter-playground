import 'package:flut_test/src/auth/auth_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flut_test/src/auth/auth_page.dart';
import 'package:flutter/material.dart';

class AuthModule extends ModuleWidget {
  @override
  List<Bloc<BlocBase>> get blocs => [
        Bloc((i) => AuthBloc(), singleton: true),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AuthPage();

  static Inject get to => Inject<AuthModule>.of();
}
