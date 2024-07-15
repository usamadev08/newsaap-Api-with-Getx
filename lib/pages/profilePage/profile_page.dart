import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PROFILE PAGE',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
