import 'package:flutter/material.dart';
import 'package:flut_test/src/app_module.dart';
import 'package:fluro/fluro.dart';
import 'package:flut_test/src/home/home_page.dart';

void main() {
  Router router = new Router();

  router.define('home', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new HomePage();
  }));

  runApp(AppModule());
}
