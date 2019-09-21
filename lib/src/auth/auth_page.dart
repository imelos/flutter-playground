import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

//class _AuthPageState extends State<AuthPage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Auth"),
//      ),
//      body: Column(
//        children: <Widget>[],
//      ),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.exit_to_app),
//        onPressed: () {
//          Navigator.pushNamed(context, 'home');
//        },
//      ),
//    );
//  }
//}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(25.0),
        child: Directionality(
            textDirection: TextDirection.ltr,
            child:Text("hello world",
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1)
              ),
            )
        )
    );
  }
}

