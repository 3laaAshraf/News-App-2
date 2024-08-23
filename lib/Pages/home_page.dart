import 'package:flutter/material.dart';
import 'package:news_app/widgets/CategoryListView.dart';

import 'package:news_app/widgets/NewsListViewbuilder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 28, 5, 85),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Alaa',
              style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'News',
              style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 50,
                  color: Color.fromARGB(255, 43, 255, 0),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        //  padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(padding: EdgeInsets.all(15)),
            ),
            SliverToBoxAdapter(
              child: categorylistview(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 15),
            ),
            const Newslistviewbuilder(C_name: 'all'),
          ],
        ),
      ),
    );
  }
}
