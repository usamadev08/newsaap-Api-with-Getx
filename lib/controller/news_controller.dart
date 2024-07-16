import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/model/news_model.dart';

class NewsController extends GetxController {
  RxList<NewsModel> trandingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYouList = <NewsModel>[].obs;

  Future<void> getTrandingNews() async {
    var baseUrl =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=0400e94c339c496fb19c95b0110ccd31";

    var response = await http.get(Uri.parse(baseUrl));
    print(response);
    if (response.statusCode == 200) {
      print(response.body);
      var body = jsonDecode(response.body);
      var articles = body['articles'];
      if (articles != null && articles is Iterable) {
        trandingNewsList.clear();
        for (var news in articles) {
          trandingNewsList.add(NewsModel.fromJson(news));
        }
      } else {
        print('No articles found');
      }
    } else {
      print('Failed to load news');
    }
    print(trandingNewsList);
  }

  Future<void> getNewsForYou() async {
    var baseUrl =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=0400e94c339c496fb19c95b0110ccd31";

    var response = await http.get(Uri.parse(baseUrl));
    print(response);
    if (response.statusCode == 200) {
      print(response.body);
      var body = jsonDecode(response.body);
      var articles = body['articles'];
      if (articles != null && articles is Iterable) {
        newsForYouList.clear();
        for (var news in articles) {
          newsForYouList.add(NewsModel.fromJson(news));
        }
      } else {
        print('No articles found');
      }
    } else {
      print('Failed to load news');
    }
    print(newsForYouList);
  }
}
