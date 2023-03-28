import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowPage extends StatefulWidget {
  const ShowPage({Key? key}) : super(key: key);

  @override
  State<ShowPage> createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Image.network(""),
          ],
        ),
      ),
    );
  }
}
