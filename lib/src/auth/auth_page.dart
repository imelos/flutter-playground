import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

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
  GoogleSignInAccount _currentUser;
  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account) {
      setState(() {
        _currentUser = account;
      });
    });
    _googleSignIn.signInSilently();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 2208, height: 1242)..init(context);
    return Container(
        padding: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/asuka_love.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Directionality(
            textDirection: TextDirection.ltr,
            child:Text("hello worlds",
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1)
              ),
            )
        )
    );
  }
}

