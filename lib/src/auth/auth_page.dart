import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/foundation.dart';
import 'package:flut_test/src/auth/auth_bloc.dart';
import 'package:flut_test/src/auth/auth_module.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'auth_model.dart';


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

class _AuthPageState extends State<AuthPage> {
  GoogleSignInAccount _currentUser;
  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account) {
      setState(() {
        _currentUser = account;
        debugPrint('movieTitle: $_currentUser');
      });
    });
    _googleSignIn.signInSilently();
  }

  Future<void> _handleSignIn() async {
    try {
//      await _googleSignIn.signIn();
      Navigator.pushNamed(context, 'home');
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 2208, height: 1242)..init(context);
    AuthBloc bloc = BlocProvider.getBloc<AuthBloc>();
    return Container(
        padding: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/asuka_love.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
             StreamBuilder(
                 stream: bloc.subject.stream,
                 builder: (context, AsyncSnapshot<AuthModel> snapshot) {
                    return Text('test');
                 }
        )
          ],
        ),
    );
  }
}

