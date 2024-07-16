import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewDetailPage extends StatelessWidget {
  const NewDetailPage({super.key});

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
                  color: Colors.red,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://www.aljazeera.com/wp-content/uploads/2024/07/2024-07-13T094931Z_1875345524_RC29U8AYBZ46_RTRMADP_3_ISRAEL-PALESTINIANS-1720866711.jpg?resize=770%2C513&quality=80',
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
                'At least 90 killed in Israeli attack on al-Mawasi ‘safe zone’ in south Gaza',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    '2 day ago * Tech',
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
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Raheem Yar',
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
                    child: Text(
                        'The attack by Israeli warplanes targeted tents housing displaced Palestinians and a water distillation unit in an area that a Gaza civil defence spokesperson told Al Jazeera was designated a “safe zone” by the Israeli military Images from the scene showed Palestinians trying to rescue people from under the rubble, with children and paramedics among the wounded.',
                        style: TextStyle(
                          fontSize: 18,
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
