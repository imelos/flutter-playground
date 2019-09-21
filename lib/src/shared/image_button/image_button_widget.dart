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
        color: Color.fromRGBO(66, 165, 00, 1.0),
        width: ScreenUtil.getInstance().setWidth(200),
        height: ScreenUtil.getInstance().setHeight(200),
      )
    );
  }
}
