import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_controller.dart';
import 'package:news_app/pages/homePage/Widgets/news_tile.dart';
import 'package:news_app/pages/homePage/Widgets/tranding_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final NewsController newsController = Get.put(NewsController());

  @override
  void initState() {
    super.initState();
    newsController.getTrandingNews();
    newsController.getNewsForYou();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.dashboard),
                  ),
                  Text(
                    'NEWS APP',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Poppins',
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {
                      newsController.getNewsForYou();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(Icons.person),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hottest News',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'See All',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Obx(
                () => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: newsController.trandingNewsList
                        .map(
                          (news) => TrandingCard(
                            ontap: () {},
                            imageUrl: news.urlToImage ?? '',
                            title: news.title ?? 'No Title',
                            author: news.author ?? 'Unknown',
                            time: news.publishedAt ?? '',
                            tag: 'Trending',
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'News For You',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'See All',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Obx(
                () => Column(
                  children: newsController.newsForYouList
                      .map(
                        (news) => NewsTile(
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
