import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kteen_app/root_page.dart';
import 'package:kteen_app/utils/user_information.dart';

class LoginPage extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'KTEEN',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            SignInButton(
              Buttons.Google,
              onPressed: (){
                _handleSignIn().then((user) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => RootPage()),
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  // 비동기 방식으로 구글 로그인
  Future<UserCredential> _handleSignIn() async {
    try {
      UserCredential userCredential;
      _googleSignIn.signIn().then((googleSignInAccount) {
        googleSignInAccount.authentication.then((googleSignInAuthentication) {
          final AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleSignInAuthentication.accessToken,
            idToken: googleSignInAuthentication.idToken,
          );

          _auth.signInWithCredential(credential).then((data) {
            userCredential = data;

            userName = userCredential.user.displayName;
            userMail = userCredential.user.email;
          }).catchError((e) {
            print('[구글 로그인] failed to get firebase user credentials');
          });
        }).catchError((e) {
          print('[구글 로그인] failed to get access token or idToken');
          return null;
        });
      }).catchError((e) {
        print('[구글 로그인] 로그인 취소');
      });
      return userCredential;
    } on FirebaseAuthException catch (e) {
      print("파이어베이스 구글 로그인 에러.\n$e");
      throw e;
    }
  }
}