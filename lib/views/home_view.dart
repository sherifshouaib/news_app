import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news.service.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';
import 'package:news_app/widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            const Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            )
          ],
        ),
      ),
      body: const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics:  BouncingScrollPhysics(),
          slivers: [
             SliverToBoxAdapter(child: CategoriesListview()),
             SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ),

        // const Column(
        //   children: [
        //     CategoriesListview(),
        //     SizedBox(
        //       height: 32,
        //     ),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}

