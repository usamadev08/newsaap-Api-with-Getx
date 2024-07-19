import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/model/news_model.dart';

class NewsController extends GetxController {
  RxList<NewsModel> trandingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYouList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYou5 = <NewsModel>[].obs;
  RxList<NewsModel> teslaNews = <NewsModel>[].obs;
  RxList<NewsModel> teslaNews5 = <NewsModel>[].obs;
  RxList<NewsModel> wallStreetNews = <NewsModel>[].obs;
  RxList<NewsModel> wallStreetNews5 = <NewsModel>[].obs;

  RxBool isTrandingNewsLoading = false.obs;
  RxBool isNewsForYouLoading = false.obs;
  RxBool isTeslaNewsLoading = false.obs;
  RxBool isWallStreetLoading = false.obs;

  Future<void> getTrandingNews() async {
    isTrandingNewsLoading.value = true;
    var baseUrl =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=0400e94c339c496fb19c95b0110ccd31";

    var response = await http.get(Uri.parse(baseUrl));
    print('Fetching trending news...');
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      var articles = body['articles'];
      if (articles != null && articles is Iterable) {
        trandingNewsList.clear();
        for (var news in articles) {
          trandingNewsList.add(NewsModel.fromJson(news));
        }
        print('Trending news fetched successfully.');
      } else {
        print('No articles found for trending news.');
      }
    } else {
      print('Failed to fetch trending news: ${response.body}');
    }
    isTrandingNewsLoading.value = false;
  }

  Future<void> getNewsForYou() async {
    isNewsForYouLoading.value = true;
    var baseUrl =
        "https://newsapi.org/v2/everything?q=apple&from=2024-07-17&to=2024-07-17&sortBy=popularity&apiKey=0400e94c339c496fb19c95b0110ccd31";

    var response = await http.get(Uri.parse(baseUrl));
    print('Fetching news for you...');
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      var articles = body['articles'];
      if (articles != null && articles is Iterable) {
        newsForYouList.clear();
        for (var news in articles) {
          newsForYouList.add(NewsModel.fromJson(news));
        }
        newsForYou5.value = newsForYouList.take(5).toList();
        print('News for you fetched successfully.');
      } else {
        print('No articles found for news for you.');
      }
    } else {
      print('Failed to fetch news for you: ${response.body}');
    }
    isNewsForYouLoading.value = false;
  }

  Future<void> getTeslaNews() async {
    isTeslaNewsLoading.value = true;
    var baseUrl =
        "https://newsapi.org/v2/everything?q=tesla&from=2024-06-18&sortBy=publishedAt&apiKey=0400e94c339c496fb19c95b0110ccd31";

    var response = await http.get(Uri.parse(baseUrl));
    print('Fetching Tesla news...');
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      var articles = body['articles'];
      if (articles != null && articles is Iterable) {
        teslaNews.clear();
        for (var news in articles) {
          teslaNews.add(NewsModel.fromJson(news));
        }
        teslaNews5.value = teslaNews.take(5).toList();
        print('Tesla news fetched successfully.');
      } else {
        print('No articles found for Tesla news.');
      }
    } else {
      print('Failed to fetch Tesla news: ${response.body}');
    }
    isTeslaNewsLoading.value = false;
  }

  Future<void> getWallStreetNews() async {
    isWallStreetLoading.value = true;
    var baseUrl =
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=0400e94c339c496fb19c95b0110ccd31";

    var response = await http.get(Uri.parse(baseUrl));
    print('Fetching Wall Street news...');
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      var articles = body['articles'];
      if (articles != null && articles is Iterable) {
        wallStreetNews.clear();
        for (var news in articles) {
          wallStreetNews.add(NewsModel.fromJson(news));
        }
        wallStreetNews5.value = wallStreetNews.take(5).toList();
        print('Wall Street news fetched successfully.');
      } else {
        print('No articles found for Wall Street news.');
      }
    } else {
      print('Failed to fetch Wall Street news: ${response.body}');
    }
    isWallStreetLoading.value = false;
  }
}
