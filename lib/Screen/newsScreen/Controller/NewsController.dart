import 'package:get/get.dart';
import 'package:newsapiexam/Screen/newsScreen/model/NewsModel.dart';

class NewsController extends GetxController {
  Articles? articles;

  void addarticles(Articles l1) {
    articles= l1;
  }
}
