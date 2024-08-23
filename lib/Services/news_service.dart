import 'package:dio/dio.dart';
import 'package:news_app/Classes/ArticalModel.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getNews({required String name}) async {
    try {
      Response response = await dio.get(
          'https://eventregistry.org/api/v1/article/getArticles?apiKey=19732a5f-c207-4478-b39c-370a4611e5c3&keyword=$name');
      Map<String, dynamic> jasonData = response.data;
      Map<String, dynamic> articles = jasonData['articles'];
      List<dynamic> title_body_img = articles['results'];
      List<dynamic> sourceTitle = [];
      List<ArticleModel> listOfArticles = [];

      for (var element in title_body_img) {
        //print(element['title']);
        sourceTitle.add(element['source']);
      }

      for (var i = 0;
          i < sourceTitle.length && i < title_body_img.length;
          i++) {
        var x = title_body_img[i];
        var z = sourceTitle[i];
        ArticleModel articleObject = ArticleModel(
            img: x['image'],
            title: x['title'],
            body: x['body'],
            URL: x['url'],
            sourceTitle: z['title']);

        listOfArticles.add(articleObject);

        // print(x['title']);
        //  print(z['title']);
      }
      return listOfArticles;
    } catch (e) {
      return [];
    }
  }
}
