import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
        color: Color.fromRGBO(66, 165, 245, 1.0),
        builder: (context, child) => HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController _controller;

  double _height = 80.0;
  double _width = 2000.0;
  bool _resized = false;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    super.initState();

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 2208, height: 1242)..init(context);
    return Container(
        padding: EdgeInsets.all(0),
        color: Color.fromRGBO(66, 165, 00, 1.0),
        child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                Container(
                  width: ScreenUtil.getInstance().setWidth(2208),
                  height: ScreenUtil.getInstance().setHeight(169),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/header.png"),
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
                    children: <Widget>[
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: Text("hello world"),
                      ),
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: Text("hello world2"),
                      ),
                    ],
                  ),
                ),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Text("hello world"),
                ),
                FadeTransition(
                  opacity: Tween(begin: 0.0, end: 1.0).animate(_controller),
                  child: RotationTransition(
                      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                      child: AnimatedSize(
                        duration: Duration(milliseconds: 2000),
                        vsync: this,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (_resized) {
                                _resized = false;
                                _height = 200.0;
                                _width = 200.0;
                                _controller.stop();
                              } else {
                                _resized = true;
                                _height = 320.0;
                                _width = 1500.0;
                                _controller.repeat();
                              }
                            });
                          },
                          child: Container(
                            width: ScreenUtil.getInstance().setWidth(_width),
                            height: ScreenUtil.getInstance().setHeight(_height),
                            margin: EdgeInsets.all(30),
                            decoration: BoxDecoration(
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
                              image: DecorationImage(
                                image: AssetImage("images/header.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Text("hello world"),
                                ),
                                Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Text("hello world2"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ),
                )

              ],
            )
        )
    );
  }
}
