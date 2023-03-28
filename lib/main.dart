import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:newsapiexam/Screen/SignUp/SignUpScreen.dart';
import 'package:newsapiexam/Screen/SignUp/SplashScreen.dart';
import 'package:newsapiexam/Screen/SigninPage/SigninScreen.dart';
import 'package:newsapiexam/Screen/newsScreen/view/NewsScreen.dart';
import 'package:newsapiexam/Screen/newsScreen/view/ShowPage.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        'signin': (p0) => SignIn(),
        'signup': (context) => SignUp(),
        'home': (context) => NewsScreen(),
        'S': (p0) => ShowPage(),
      },
    ),
  );
}
