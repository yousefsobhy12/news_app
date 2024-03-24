import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widget/news_listview.dart';

class NewsListviewBuilder extends StatefulWidget {
  const NewsListviewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListviewBuilder> createState() => _NewsListviewBuilderState();
}

var future;

class _NewsListviewBuilderState extends State<NewsListviewBuilder> {
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(categoryName: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListview(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const Center(
                child: Text("Oops there's an error, please try again later"));
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
