import 'package:flutter/material.dart';
import 'package:news_app/Classes/ArticalModel.dart';
import 'package:news_app/widgets/ListShape.dart';

class Newslistview extends StatelessWidget {
  Newslistview({super.key, required this.articles});
  List<ArticleModel> articles = [];
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return ListShape(ArticleObject: articles[index]);
      },
    ));
  }
}
