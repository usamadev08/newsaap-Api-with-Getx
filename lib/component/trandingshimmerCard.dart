import 'package:flutter/material.dart';
import 'package:news_app/component/shimmerLoadingContiner.dart';

class Trandingshimmercard extends StatelessWidget {
  const Trandingshimmercard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
          ShimmerLoadingContainer(
            width: double.infinity,
            height: 200,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ShimmerLoadingContainer(
                width: MediaQuery.of(context).size.width * 0.2,
                height: 10,
              ),
              ShimmerLoadingContainer(
                width: MediaQuery.of(context).size.width * 0.15,
                height: 10,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ShimmerLoadingContainer(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 20,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ShimmerLoadingContainer(
                width: MediaQuery.of(context).size.width * 0.45,
                height: 20,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              ShimmerLoadingContainer(
                width: 30,
                height: 30,
              ),
              SizedBox(width: 5),
              ShimmerLoadingContainer(
                width: MediaQuery.of(context).size.width * 0.55,
                height: 20,
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
