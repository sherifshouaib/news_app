import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news.service.dart';
import 'package:news_app/views/home_view.dart';

void main()async {
  
//NewsService(Dio()).getNews();

  runApp(const NewsApp());
}


// sherif shouaib


class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
