import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flut_test/src/shared/image_button/image_button_model.dart';

class ImageButtonWidget extends StatelessWidget {
  final Data data;
  ImageButtonWidget({this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: ScreenUtil.getInstance().setWidth(data.width),
        height: ScreenUtil.getInstance().setHeight(data.height),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(data.normal),
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
          )
      )
    );
  }
}
