import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flut_test/src/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flut_test/src/home/home_page.dart';
import 'package:flut_test/src/auth/auth_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/services.dart';
import 'package:flut_test/src/auth/auth_module.dart';
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    Router router = new Router();
    router.define('auth', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return new AuthModule();
    }));
    router.define('home', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return new HomePage();
    }));
    return MaterialApp(
      home: AuthModule(),
      onGenerateRoute: router.generator,
    );
  }
}
