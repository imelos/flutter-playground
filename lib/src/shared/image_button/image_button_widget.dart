import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flut_test/src/shared/image_button/image_button_model.dart';

class ImageButtonWidget extends StatelessWidget {
  final GestureTapCallback onPressed;
  final Data data;
  ImageButtonWidget({this.data, @required this.onPressed});
  @override
  Widget build(BuildContext context) {


    return GestureDetector(
        onTap: () {
          final snackBar = SnackBar(content: Text("Tap"));

          Scaffold.of(context).showSnackBar(snackBar);
        },
      child: Container(
          width: ScreenUtil.getInstance().setWidth(data.width),
          height: ScreenUtil.getInstance().setHeight(data.height),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(data.normal),
              fit: BoxFit.contain,
            ),
          )
      ),
    );
  }
}
