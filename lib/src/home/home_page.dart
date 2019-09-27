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
  void logTest() {
    print('button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.contain,
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
                    fit: BoxFit.contain,
                  ),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.orangeAccent,
                      blurRadius: 3.0,
                    )
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                      color: Colors.transparent,
                        child: ImageButtonWidget(
                            data:Data(
                              normal: 'assets/btn-bonus.png',
                              pressed: 'assets/btn-bonus-pressed.png',
                              width: 545.00,
                              height: 130.00,
                              onPress: logTest,
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
