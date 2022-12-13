import 'package:flutter/material.dart';

import '../models/user.dart';

class MainPage extends StatefulWidget {
  final User user;
  const MainPage({super.key, required this.user});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Homestay Raya'),
        ),
      ),
    );
  }
}


