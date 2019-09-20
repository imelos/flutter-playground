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

class HomePage extends StatelessWidget {
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
                Container(
                  width: ScreenUtil.getInstance().setWidth(800),
                  height: ScreenUtil.getInstance().setHeight(169),
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
                )
              ],
            )
        )
    );
  }
}
