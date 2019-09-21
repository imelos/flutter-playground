import 'package:flutter/material.dart';
import 'package:flut_test/src/home/home_page.dart';
import 'package:flut_test/src/auth/auth_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    ScreenUtil.instance = ScreenUtil(width: 2208, height: 1242)..init(context);
    Router router = new Router();
    router.define('auth', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return new AuthPage();
    }));
    router.define('home', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return new HomePage();
    }));

    return MaterialApp(
      home: AuthPage(),
      onGenerateRoute: router.generator,
    );
  }
}
