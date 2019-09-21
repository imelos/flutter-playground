import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flut_test/src/shared/image_button/image_button_model.dart';

class ImageButtonWidget extends StatefulWidget {
  final Data data;
  @override
  _ImageButtonWidgetState createState() => _ImageButtonWidgetState();

  ImageButtonWidget({Key key, this.data}): super(key: key);
}

class _ImageButtonWidgetState extends State<ImageButtonWidget> {
  String currentImage;
  @override
  void initState() {
    currentImage = widget.data.normal;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: GestureDetector(
        onTapDown:(TapDownDetails details) {
          setState(() {
            currentImage = widget.data.pressed;
          });
        },
        onTapUp: (TapUpDetails details) {
          setState(() {
            currentImage = widget.data.normal;
          });
        },
        child: Container(
            width: ScreenUtil.getInstance().setWidth(widget.data.width),
            height: ScreenUtil.getInstance().setHeight(widget.data.height),
            decoration: BoxDecoration(
              image: DecorationImage(
                image:  AssetImage(currentImage),
                fit: BoxFit.contain,
              ),
            ),
        ),
      ),
    );
  }
}
