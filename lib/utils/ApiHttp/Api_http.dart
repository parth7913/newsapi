import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapiexam/Screen/newsScreen/model/NewsModel.dart';

class ApiHelper {
  ApiHelper._();

 static ApiHelper apiHelper = ApiHelper._();

  Future<NewsModel?> getData() async {
    String link =
        "https://newsapi.org/v2/everything?q=apple&from=2023-03-27&to=2023-03-27&sortBy=popularity&apiKey=3146781b88294c9dbf1af1f27bb5f5ed";
    var respone = await http.get(Uri.parse(link));
    if (respone.statusCode == 200) {
      return NewsModel.fromJson(jsonDecode(respone.body));
    }
    return null;
  }
}
