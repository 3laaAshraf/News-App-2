import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewsListViewbuilder.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({required this.CategoryName});
  final String CategoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 28, 5, 85),
        body: Padding(
          padding: EdgeInsets.only(top: 60),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: CustomScrollView(
              slivers: [Newslistviewbuilder(C_name: CategoryName)],
            ),
          ),
        ));
  }
}
