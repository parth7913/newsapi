import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapiexam/Screen/newsScreen/Controller/NewsController.dart';

class ShowPage extends StatefulWidget {
  const ShowPage({Key? key}) : super(key: key);

  @override
  State<ShowPage> createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  NewsController newsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Obx(
          () => SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${newsController.h1.value.publishedAt}",
                    style: GoogleFonts.kalam(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    "${newsController.h1.value.urlToImage}",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${newsController.h1.value.title}",
                    style: GoogleFonts.kalam(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${newsController.h1.value.description}",
                    style: GoogleFonts.kalam(fontSize: 18),
                  ),
                ),
                Padding(

                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${newsController.h1.value.content}",
                    style: GoogleFonts.kalam(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${newsController.h1.value.author}",
                    style: GoogleFonts.kalam(fontSize: 18, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.download,size: 35,color: Colors.white,)),
      ),
    );
  }
}
