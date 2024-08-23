import 'package:flutter/material.dart';
import 'package:news_app/Pages/home_page.dart';
import 'package:dio/dio.dart';

void main() {
  // print(MM);
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
