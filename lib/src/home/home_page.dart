import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flut_test/src/shared/image_button/image_button_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void logTest() {
    print('button pressed5');
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
                          normal: AssetImage('assets/btn-bonus.png'),
                          pressed: AssetImage('assets/btn-bonus-pressed.png'),
                          width: ScreenUtil.getInstance().setWidth(545.00),
                          height: ScreenUtil.getInstance().setWidth(130.00),
                          onPress: logTest,
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
