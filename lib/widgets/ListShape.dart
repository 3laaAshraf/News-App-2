import 'package:flutter/material.dart';
import 'package:news_app/Classes/ArticalModel.dart';
import 'package:news_app/Pages/Web_View.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ListShape extends StatelessWidget {
  ListShape({required this.ArticleObject});
  final ArticleModel ArticleObject;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return WebViewScreen(url: ArticleObject.URL);
              }));
            },
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ArticleObject.sourceTitle ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'ConcertOne1',
                      ),
                    ),
                    Text(
                      ArticleObject.title ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SignikaNegative',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: ClipRRect(
                  child: Image.network(
                    ArticleObject.img ??
                        'https://plus.unsplash.com/premium_photo-1682310096066-20c267e20605?q=80&w=1824&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    height: 120,
                    width: 100,
                    alignment: Alignment.topRight,
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ]),
          ),
        ),
        const Divider(
          // width: 50,
          thickness: 1,
          endIndent: 10,
          indent: 10,
          color: Color.fromARGB(255, 95, 88, 88),
        ),
      ],
    );
  }
}
