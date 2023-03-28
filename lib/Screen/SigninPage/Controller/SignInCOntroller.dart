import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapiexam/utils/share_pre/shreprefrence.dart';

class SignController extends GetxController {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  TextEditingController txtuseremail = TextEditingController();
  TextEditingController txtuserpassword = TextEditingController();
  RxString note1 = "".obs;
  RxString note2 = "".obs;
  RxString uname = "".obs;
  RxBool? login;
  RxString? email;

  Future<String?> username() async {
    email = (await readuserEmailpref()) as RxString?;
  }
}
