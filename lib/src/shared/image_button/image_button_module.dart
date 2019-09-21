import 'package:flut_test/src/shared/image_button/image_button_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class ImageButtonModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ImageButtonBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => Container();

  static Inject get to => Inject<ImageButtonModule>.of();
}
