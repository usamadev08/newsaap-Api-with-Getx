import 'package:flutter/material.dart';
import 'package:news_app/component/shimmerLoadingContiner.dart';

class Newstileshimmercard extends StatelessWidget {
  const Newstileshimmercard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          ShimmerLoadingContainer(width: 120, height: 120),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ShimmerLoadingContainer(
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(width: 5),
                    ShimmerLoadingContainer(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ShimmerLoadingContainer(
                    width: MediaQuery.of(context).size.width / 2, height: 10),
                SizedBox(
                  height: 10,
                ),
                ShimmerLoadingContainer(
                    width: MediaQuery.of(context).size.width / 2, height: 10),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShimmerLoadingContainer(
                        width: MediaQuery.of(context).size.width / 7,
                        height: 8),
                    ShimmerLoadingContainer(
                        width: MediaQuery.of(context).size.width / 7,
                        height: 8),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
