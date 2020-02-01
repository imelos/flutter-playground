import 'package:flutter/widgets.dart';

class ImageButtonWidget extends StatefulWidget {
  final ImageProvider normal;
  final ImageProvider pressed;
  final double width;
  final double height;
  final VoidCallback onPress;
  @override
  _ImageButtonWidgetState createState() => _ImageButtonWidgetState();

  ImageButtonWidget({Key key, this.normal, this.pressed, this.width, this.height, this.onPress}): super(key: key);
}

class _ImageButtonWidgetState extends State<ImageButtonWidget> with SingleTickerProviderStateMixin {
  ImageProvider currentImage;
  ImageProvider pressedImage;
  AnimationController animationController;
  Animation<double> animation;
  @override
  void initState() {
    currentImage = widget.normal;
    pressedImage = widget.pressed;
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
    return  GestureDetector(
      onTapDown:(TapDownDetails details) {
        setState(() {
          animationController.reset();
          animationController.forward();
          currentImage = widget.pressed;
        });
      },
      onTapUp: (TapUpDetails details) {
        widget.onPress();
        setState(() {
          currentImage = widget.normal;
        });
      },
      child: FadeTransition(
        opacity: animation,
        child: ScaleTransition(
            scale: animation,
            child: Container(
              width: widget.width,
              height: widget.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: currentImage,
                  fit: BoxFit.contain,
                ),
              ),
            )
        ),
      ),
    );
  }
}
