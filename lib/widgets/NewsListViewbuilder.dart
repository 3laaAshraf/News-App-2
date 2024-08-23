import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Classes/ArticalModel.dart';
import 'package:news_app/Services/news_service.dart';
import 'package:news_app/widgets/NewsListView.dart';

class Newslistviewbuilder extends StatefulWidget {
  const Newslistviewbuilder({super.key, required this.C_name});
  final String C_name;
  @override
  State<Newslistviewbuilder> createState() => _NewslistviewbuilderState();
}

class _NewslistviewbuilderState extends State<Newslistviewbuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    future = NewsService(Dio()).getNews(name: widget.C_name);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Newslistview(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
                child: Text('oobs there is an error ,please try again',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 50,
                        fontFamily: 'Oswald',
                        color: Color.fromARGB(255, 159, 15, 5))));
          } else {
            return const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
