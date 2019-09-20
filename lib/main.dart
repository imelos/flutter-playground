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
//            color: Color.fromRGBO(66, 33, 2, 1.0),
                  width: ScreenUtil.getInstance().setWidth(2208),
                  height: ScreenUtil.getInstance().setHeight(169),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/header.png"),
                      fit: BoxFit.cover,
                    ),
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
//            color: Color.fromRGBO(66, 33, 2, 1.0),
                  width: ScreenUtil.getInstance().setWidth(500),
                  height: ScreenUtil.getInstance().setHeight(169),
                  decoration: BoxDecoration(
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
