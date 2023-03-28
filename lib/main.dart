import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:newsapiexam/Screen/SignUp/SignUpScreen.dart';
import 'package:newsapiexam/Screen/SigninPage/SigninScreen.dart';
import 'package:newsapiexam/Screen/newsScreen/view/NewsScreen.dart';
import 'package:newsapiexam/Screen/newsScreen/view/ShowPage.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => NewsScreen(),
        'signup': (context) => SignUp(),
        'SignIn': (context) => SignIn(),
        'S': (p0) => ShowPage(),
      },
    ),
  );
}
