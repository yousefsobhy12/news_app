import 'package:flutter/material.dart';
import 'package:news_app/widget/categories_listview.dart';
import 'package:news_app/widget/news_listview_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 240,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect( // Wrap the image with ClipRRect
                borderRadius: BorderRadius.circular(24), // Set the desired border radius
                child: Image.asset(
                  'assets/deepNews.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            centerTitle: true,
            floating: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      child: const CategoriesListview(),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                    width: double.infinity,
                  ),
                  const NewsListviewBuilder(category: "general"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}