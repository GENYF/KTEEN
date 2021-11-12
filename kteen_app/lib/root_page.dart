import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kteen_app/tab_page.dart';
import 'package:kteen_app/login_page.dart';
import 'package:kteen_app/utils/user_information.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 리액티브 프로그래밍, 스트림 데이터 제어
    return StreamBuilder<User>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {

            return TabPage();
          }
          else{
            return LoginPage();
          }
        }
    );
  }
}