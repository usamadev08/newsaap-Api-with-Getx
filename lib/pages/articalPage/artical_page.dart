import 'package:flutter/material.dart';

class ArticalPage extends StatelessWidget {
  const ArticalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ARTICAL PAGE',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
