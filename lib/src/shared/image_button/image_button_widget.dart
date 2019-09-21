import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flut_test/src/shared/image_button/image_button_model.dart';

class ImageButtonWidget extends StatefulWidget {
  final GestureTapCallback onPressed;
  final Data data;
  final Function() notifyParent;
  ImageButtonWidget({Key key, @required this.notifyParent, this.data, @required this.onPressed,}): super(key: key);

  @override
  _ImageButtonWidgetState createState() => _ImageButtonWidgetState();
}

class _ImageButtonWidgetState extends State<ImageButtonWidget> {
//  String _currentImage = ImageButtonWidget.data.normal;
  double _width = 30.00;

  void _doSomething() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      _width = 20.00;
    });
  }
  @override
  Widget build(BuildContext context) {
//    _currentMainImage = widget.data.normal;
    AssetImage _image = new AssetImage(_currentImage);
//     _width = widget.data.width;

    return new Container(
      child: GestureDetector(
        onTapDown:(TapDownDetails details) {
          _doSomething();

//          setState(() {
//            _image = new AssetImage(widget.data.pressed);
//            _width = 33.00;
//            print(_width);
//          });
        },
        child: Container(
            width: ScreenUtil.getInstance().setWidth(_width),
            height: ScreenUtil.getInstance().setHeight(ImageButtonWidget.data.height),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: _image,
                fit: BoxFit.contain,
              ),
            ),
            child: Text('$_width'),
        ),
      ),
    );
  }
}
