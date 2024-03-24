import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widget/news_tile.dart';

// ignore: must_be_immutable
class NewsListview extends StatelessWidget {
  bool isLoading = true;
 final List<ArticleModel> articles;

  NewsListview({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return NewsTile(articleModel: articles[index]);
      },
    );
  }
}
