import 'package:flutter/material.dart';
import 'package:news_app/widget/news_listview_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            SizedBox(
              height: 25,
              width: double.infinity,
            ),
            NewsListviewBuilder(
              category: category,
            )
          ],
        ),
      ),
    );
  }
}
