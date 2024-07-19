import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/component/newstileShimmerCard.dart';
import 'package:news_app/controller/news_controller.dart';
import 'package:news_app/pages/articalPage/widgets/serach_bar.dart';
import 'package:news_app/pages/homePage/widgets/news_tile.dart';
import 'package:news_app/pages/newsdetailPage/newsdetail_page.dart';

class ArticalPage extends StatelessWidget {
  const ArticalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsController newsController = Get.put(NewsController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              SearchWidget(),
              SizedBox(height: 20),
              Obx(
                () => newsController.isNewsForYouLoading.value
                    ? Column(
                        children: [
                          Newstileshimmercard(),
                          Newstileshimmercard(),
                          Newstileshimmercard(),
                          Newstileshimmercard(),
                          Newstileshimmercard(),
                        ],
                      )
                    : Column(
                        children: newsController.newsForYouList
                            .map(
                              (news) => NewsTile(
                                ontap: () {
                                  Get.to(() => NewDetailPage(news: news));
                                },
                                imageUrl: news.urlToImage ?? '',
                                title: news.title ?? 'No Title',
                                author: news.author ?? 'Unknown',
                                time: news.publishedAt ?? '',
                              ),
                            )
                            .toList(),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
