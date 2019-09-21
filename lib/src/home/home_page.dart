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
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(66, 33, 33, 0.7),
                    blurRadius: 10.0, // has the effect of softening the shadow
                    spreadRadius: 3.0, // has the effect of extending the shadow
                    offset: Offset(
                      3.0, // horizontal, move right 10
                      3.0, // vertical, move down 10
                    ),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ImageButtonWidget(
                      data:Data(
                        normal: 'assets/btn-bonus.png',
                        pressed: 'assets/btn-bonus-pressed.png',
                        width: 200.00,
                        height: 30.00,
                      )
                  ),
//                  Image.asset('images/pic2.jpg'),
//                  Image.asset('images/pic3.jpg'),
                ],
              ),
            )
          ],
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
