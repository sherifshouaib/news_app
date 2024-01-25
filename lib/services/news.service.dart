import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  /*void getGeneralNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=bc7cdd0d61c84a3d9b630d158ad912c3&q=sports');
    print(response);
  }*/

 Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
 
try {
  Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=bc7cdd0d61c84a3d9b630d158ad912c3');
  
      Map<String, dynamic> jsonData = response.data;
  
      List<dynamic> articles = jsonData['articles'];
  
      List<ArticleModel> articleslist = [];
  
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        /* ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
         
        );*/
        articleslist.add(articleModel);
      }
      return articleslist;
} catch (e) {
  return [];  // قال هيعمله بعدين بحل كويس جدا 
}
  
    
  }
}
