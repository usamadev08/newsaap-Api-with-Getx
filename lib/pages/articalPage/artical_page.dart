import 'package:flutter/material.dart';
import 'package:news_app/pages/articalPage/widgets/serach_bar.dart';
import 'package:news_app/pages/homePage/Widgets/news_tile.dart';

class ArticalPage extends StatelessWidget {
  const ArticalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              SearchWidget(),
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
                        'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202407/john-cena--shah-rukh-khan-132308330-16x9_0.jpeg?VersionId=ot1DH2GWvguJ4q_4cDxQXFjno6HwHMZM&size=690:388',
                    title:
                        'John Cena praises Bollywood superstar Shah Rukh Khan in latest tweet',
                    author: 'Anurag Bohra',
                    time: '2 day ago',
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
