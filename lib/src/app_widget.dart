import 'package:flutter/material.dart';
import 'package:flut_test/src/home/home_module.dart';
import 'package:flut_test/src/home/home_page.dart';
import 'package:flut_test/src/auth/auth_page.dart';
import 'package:fluro/fluro.dart';



class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Router router = new Router();

    router.define('auth', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return new AuthPage();
    }));

    router.define('home', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return new HomePage();
    }));
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeModule(),
      onGenerateRoute: router.generator,
    );
  }
}
