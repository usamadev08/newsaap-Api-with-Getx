import 'package:flutter/material.dart';
import 'package:news_app/component/shimmerLoadingContiner.dart';

class ShimmerDemoPage extends StatelessWidget {
  const ShimmerDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
