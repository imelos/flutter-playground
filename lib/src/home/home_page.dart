import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flut_test/src/shared/image_button/image_button_widget.dart';
import 'package:flut_test/src/shared/image_button/image_button_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//  final data = Data(
//      normal: 'shit',
//      pressed: 'better',
//      width: 200.0,
//      height: 40.0,
//  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: ScreenUtil.getInstance().setWidth(2208),
                height: ScreenUtil.getInstance().setHeight(169),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/header.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
//                        fit: BoxFit.cover, // otherwise the logo will be tiny
                      color: Colors.transparent,
//                      alignment: Alignment.center,
                        child: ImageButtonWidget(
                            data:Data(
                              normal: 'assets/btn-bonus.png',
                              pressed: 'assets/btn-bonus-pressed.png',
                              width: 545.00,
                              height: 130.00,
                            )
                        ),
                      ),
                    ),
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.contain, // otherwise the logo will be tiny
                        child: const FlutterLogo(),
                      ),
                    ),
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.contain, // otherwise the logo will be tiny
                        child: const FlutterLogo(),
                      ),
                    ),
                  ],
                ),
//                child: Container(
//                  width: ScreenUtil.getInstance().setWidth(2208),
//                  height: ScreenUtil.getInstance().setHeight(169),
//                  color: Color(0xFF0E3311).withOpacity(0.0),
//                  child: Center(
//                  ),
//                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exit_to_app),
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'auth');
        },
      ),
    );
  }
}
