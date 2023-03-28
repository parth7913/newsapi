import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapiexam/Screen/newsScreen/model/NewsModel.dart';
import 'package:newsapiexam/utils/ApiHttp/Api_http.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
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
              return ListView.builder(
                itemCount: l1!.articles!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed('S');
                      },
                      child: ListTile(
                        leading: Image.network(
                          "${l1.articles![index].urlToImage}",
                        ),
                        title: Text(
                          "${l1.articles![index].title}",
                          style: GoogleFonts.kalam(
                            color: Colors.amber,
                          ),
                        ),
                        subtitle: Text(
                          "- ${l1.articles![index].author}",
                          style: GoogleFonts.kalam(),
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
