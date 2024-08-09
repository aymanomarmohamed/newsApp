import 'package:flutter/material.dart';
import 'package:newsapp/serves/api_news.dart';
import 'package:newsapp/views/homepage.dart';

void main() {
  runApp( NewsApp());
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

