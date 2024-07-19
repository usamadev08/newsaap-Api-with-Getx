import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_controller.dart';
import 'package:news_app/pages/articalPage/widgets/serach_bar.dart';
import 'package:news_app/pages/homePage/Widgets/news_tile.dart';
import 'package:news_app/pages/newsdetailPage/newsdetail_page.dart';

class ArticalPage extends StatelessWidget {
  const ArticalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsController newsController = Get.put(NewsController());

    // Initial filter to show all news initially
    newsController.filterNews('');

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SearchWidget(),
              SizedBox(height: 20),
              Obx(() {
                if (newsController.filteredNewsList.isEmpty) {
                  return Expanded(
                    child: Center(child: Text('No results found')),
                  );
                } else {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: newsController.filteredNewsList.length,
                      itemBuilder: (context, index) {
                        var news = newsController.filteredNewsList[index];
                        return NewsTile(
                          ontap: () {
                            Get.to(() => NewDetailPage(news: news));
                          },
                          imageUrl: news.urlToImage ?? '',
                          title: news.title ?? 'No Title',
                          author: news.author ?? 'Unknown',
                          time: news.publishedAt ?? '',
                        );
                      },
                    ),
                  );
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
