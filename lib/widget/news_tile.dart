import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: articleModel.articleImage != null
              ? Image.network(
                  articleModel.articleImage!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Container(
                  height: 200,
                  color: Colors.grey, // Placeholder color when image is null
                ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title,
            style: const TextStyle(fontFamily: 'SpaceMonoBold', fontSize: 20),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.subTitle ?? "There's no subtitle",
            style: const TextStyle(color: Colors.grey),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
