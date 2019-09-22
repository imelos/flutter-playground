import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flut_test/src/shared/image_button/image_button_model.dart';

class ImageButtonWidget extends StatefulWidget {
  final Data data;
  @override
  _ImageButtonWidgetState createState() => _ImageButtonWidgetState();

  ImageButtonWidget({Key key, this.data}): super(key: key);
}

class _ImageButtonWidgetState extends State<ImageButtonWidget> with SingleTickerProviderStateMixin {
  String currentImage;
  AssetImage pressedImage;
  AnimationController animationController;
  Animation<double> animation;
  @override
  void initState() {
    currentImage = widget.data.normal;
    pressedImage = AssetImage(widget.data.pressed);
    animationController = AnimationController(
      vsync: this,
      lowerBound: 0.94,
      upperBound: 0.98,
      duration: Duration(milliseconds: 333),
    )..addListener(() => setState(() {}));
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOutSine,
    );
    super.initState();
  }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(pressedImage, context);
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: GestureDetector(
        onTapDown:(TapDownDetails details) {
          setState(() {
            animationController.reset();
            animationController.forward();
            currentImage = widget.data.pressed;
          });
        },
        onTapUp: (TapUpDetails details) {
          setState(() {
            currentImage = widget.data.normal;
          });
        },
        child: FadeTransition(
          opacity: animation,
          child: ScaleTransition(
              scale: animation,
              child: Container(
                width: ScreenUtil.getInstance().setWidth(widget.data.width),
                height: ScreenUtil.getInstance().setHeight(widget.data.height),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:  AssetImage(currentImage),
                    fit: BoxFit.contain,
                  ),
                ),
              )
          ),
        ),
      ),
    );
  }
}
