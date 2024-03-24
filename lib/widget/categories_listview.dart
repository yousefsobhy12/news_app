import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widget/category_card.dart';

class CategoriesListview extends StatelessWidget {
  const CategoriesListview({super.key});
  final List<CategoryModel> category = const [
    CategoryModel(categoryName: 'Business', image: 'assets/business3.jpg'),
    CategoryModel(
        categoryName: 'Entertainment', image: 'assets/entertaiment.avif'),
    CategoryModel(categoryName: 'Health', image: 'assets/health.avif'),
    CategoryModel(categoryName: 'Science', image: 'assets/science.avif'),
    CategoryModel(categoryName: 'Sports', image: 'assets/belly.jpg'),
    CategoryModel(categoryName: 'Technology', image: 'assets/technology.jpeg'),
    CategoryModel(categoryName: 'General', image: 'assets/general.avif'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            categoryObj: category[index],
          );
        },
      ),
    );
  }
}
