import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/images/back.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black38,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: GoogleFonts.kalam(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: "Email Address",
                      hintStyle: GoogleFonts.kalam(color: Colors.white),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.visibility,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      hintText: "Password",
                      hintStyle: GoogleFonts.kalam(color: Colors.white),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(fixedSize: Size(300, 50)),
                  onPressed: () {},
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.kalam(color: Colors.black, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Get.offNamed('signup');
                  },
                  child: Text(
                    "Don't Have A Account ?",
                    style: GoogleFonts.kalam(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
