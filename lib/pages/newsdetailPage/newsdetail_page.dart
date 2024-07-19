import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/model/news_model.dart';

class NewDetailPage extends StatelessWidget {
  final NewsModel news;

  const NewDetailPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios_new),
                          Text('Back'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          news.urlToImage ??
                              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fin.pinterest.com%2Fpin%2Fno-data-found--168814686021923358%2F&psig=AOvVaw2Kp-nrowKWLyAFTVj9_QLe&ust=1721405261216000&source=images&cd=vfe&opi=89978449&ved=2ahUKEwi-spK6_LCHAxXL6rsIHTBNDb4QjRx6BAgAEBU',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                news.title ?? 'No Title',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    '  ${news.author ?? ''} | ${news.publishedAt ?? ''} ',
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.blue,
                    child: Text(news.author![0],
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(news.author ?? 'Unknown',
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      )),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  Flexible(
                    child: Text(news.content ?? 'No Content Available',
                        style: TextStyle(
                          fontSize: 16,
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
