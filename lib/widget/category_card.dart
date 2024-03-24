import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryObj});
  final CategoryModel categoryObj;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: categoryObj.categoryName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8, left: 8),
        child: Container(
          height: 100,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(categoryObj.image))),
          child: Center(
            child: Text(
              categoryObj.categoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'SpaceMonoBold',
                  fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
