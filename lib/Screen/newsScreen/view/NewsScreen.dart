import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapiexam/Screen/newsScreen/Controller/NewsController.dart';
import 'package:newsapiexam/Screen/newsScreen/model/NewsModel.dart';
import 'package:newsapiexam/utils/ApiHttp/Api_http.dart';
import 'package:newsapiexam/utils/share_pre/shreprefrence.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  NewsController newsController = Get.put(NewsController());
  NewsModel newsModel = NewsModel();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "News App",
            style: GoogleFonts.kalam(),
          ),
          actions: [
            IconButton(
              onPressed: () {
                alreadylogin(false);
                Get.offNamed('signin');
              },
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        body: FutureBuilder<NewsModel?>(
          future: ApiHelper.apiHelper.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text(
                "${snapshot.error}",
              );
            } else if (snapshot.hasData) {
              NewsModel? l1 = snapshot.data;
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: l1!.articles!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        newsController.h1.value = l1.articles![index];
                        Get.toNamed('S');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "${l1.articles![index].publishedAt}",
                            style: GoogleFonts.kalam(
                              textStyle: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Image.network(
                                    "${l1.articles![index].urlToImage}"),
                                Text(
                                  " - ${l1.articles![index].author}",
                                  maxLines: 3,
                                  style: GoogleFonts.kalam(
                                    textStyle: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "${l1.articles![index].title}",
                            maxLines: 2,
                            style: GoogleFonts.kalam(
                              textStyle:
                                  TextStyle(overflow: TextOverflow.ellipsis),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(color: Colors.black),
            );
          },
        ),
      ),
    );
  }
}
