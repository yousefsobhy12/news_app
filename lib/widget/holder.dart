// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_services.dart';
// import 'package:news_app/widget/news_tile.dart';

// class NewsListview extends StatefulWidget {
//   const NewsListview({
//     super.key,
//   });

//   @override
//   State<NewsListview> createState() => _NewsListviewState();
// }

// class _NewsListviewState extends State<NewsListview> {
//   bool isLoading = true;
//   List<ArticleModel> articles = [];
//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }

//   // New method for fetching data asynchronously
//   void fetchData() async {
//     List<ArticleModel> news = await NewsService(Dio()).getNews();
//     setState(() {
//       articles = news;
//       isLoading = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? CircularProgressIndicator()
//         : ListView.builder(
//             shrinkWrap: true,
//             physics: ClampingScrollPhysics(),
//             itemCount: articles.length,
//             itemBuilder: (context, index) {
//               return NewsTile(articleModel: articles[index]);
//             },
//           );
//   }
// }
