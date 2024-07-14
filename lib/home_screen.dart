import 'package:flutter/material.dart';
import 'package:news_app/pages/news_tile.dart';
import 'package:news_app/pages/tranding_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NEWSEEKER',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hottes News',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'See All',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TrandingCard(
                      imageUrl:
                          'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202407/john-cena--shah-rukh-khan-132308330-16x9_0.jpeg?VersionId=ot1DH2GWvguJ4q_4cDxQXFjno6HwHMZM&size=690:388',
                      title:
                          'John Cena praises Bollywood superstar Shah Rukh Khan in latest tweet',
                      author: 'Anurag Bohra',
                      time: '2 day ago',
                      tag: 'Tranding No 1',
                    ),
                    TrandingCard(
                      imageUrl:
                          'https://www.geo.tv/assets/uploads/updates/2024-07-13/554031_7240232_updates.jpg',
                      title:
                          'Big relief for PTI: Imran Khan, Bushra Bibi acquitted in iddat case',
                      author: 'Zarmeen Zehra',
                      time: 'July 13, 2024',
                      tag: 'Tranding ',
                    ),
                    TrandingCard(
                      imageUrl:
                          'https://www.aljazeera.com/wp-content/uploads/2024/07/2024-07-12T114050Z_1940855095_RC2NT8AZOXPJ_RTRMADP_3_INDIA-AMBANI-WEDDING-1720822381.jpg?resize=770%2C513&quality=808',
                      title:
                          'JIndia’s Reliance, Bollywood fuel Ambani wedding hype through social media',
                      author: 'Usamaakhn',
                      time: '12 Jul 2024',
                      tag: 'Tranding No 1',
                    ),
                    TrandingCard(
                      imageUrl:
                          'https://www.aljazeera.com/wp-content/uploads/2024/07/2024-07-13T094931Z_1875345524_RC29U8AYBZ46_RTRMADP_3_ISRAEL-PALESTINIANS-1720866711.jpg?resize=770%2C513&quality=80',
                      title:
                          'At least 90 killed in Israeli attack on al-Mawasi ‘safe zone’ in south Gaza',
                      author: 'Raheem Yar',
                      time: '13 Jul 2024',
                      tag: 'Tranding No 2',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
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
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  NewsTile(
                    imageUrl:
                        'https://www.geo.tv/assets/uploads/updates/2024-07-13/554031_7240232_updates.jpg',
                    title:
                        'Big relief for PTI: Imran Khan, Bushra Bibi acquitted in iddat case',
                    author: 'Zarmeen Zehra',
                    time: 'July 13, 2024',
                  ),
                  NewsTile(
                    imageUrl:
                        'https://www.aljazeera.com/wp-content/uploads/2024/07/2024-07-13T094931Z_1875345524_RC29U8AYBZ46_RTRMADP_3_ISRAEL-PALESTINIANS-1720866711.jpg?resize=770%2C513&quality=80',
                    title:
                        'At least 90 killed in Israeli attack on al-Mawasi ‘safe zone’ in south Gaza',
                    author: 'Raheem Yar',
                    time: '13 Jul 2024',
                  ),
                  NewsTile(
                    imageUrl:
                        'https://www.aljazeera.com/wp-content/uploads/2024/07/2024-07-12T114050Z_1940855095_RC2NT8AZOXPJ_RTRMADP_3_INDIA-AMBANI-WEDDING-1720822381.jpg?resize=770%2C513&quality=808',
                    title:
                        'JIndia’s Reliance, Bollywood fuel Ambani wedding hype through social media',
                    author: 'Usamaakhn',
                    time: '12 Jul 2024',
                  ),
                  NewsTile(
                    imageUrl:
                        'https://www.geo.tv/assets/uploads/updates/2024-07-13/554031_7240232_updates.jpg',
                    title:
                        'Big relief for PTI: Imran Khan, Bushra Bibi acquitted in iddat case',
                    author: 'Zarmeen Zehra',
                    time: 'July 13, 2024',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
