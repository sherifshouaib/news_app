/*import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news.service.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];
  bool isloading = true;

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    isloading = false;
    setState(
      () {},
    );
  }


  @override
  Widget build(BuildContext context) {
    return isloading
        ? const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (conext, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: NewsTile(
                    articleModel: articles[index],
                  ),
                );
              },
            ),
          );
  }
}
*/