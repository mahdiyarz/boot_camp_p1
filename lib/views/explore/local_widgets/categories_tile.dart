import 'package:flutter/material.dart';

import '../../res/export_resources.dart';
import '../../widgets/rating.dart';

class CategoriesTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String author;
  final int rating;
  const CategoriesTile({
    required this.imagePath,
    required this.title,
    required this.author,
    required this.rating,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 178.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            height: 133,
            child: Image.asset(imagePath),
          ),
          const SizedBox(
            height: 2,
          ),
          Expanded(
            child: Text(
              title,
              style: getBoldStyle(
                fontColor: AppColorManagement.onBackground,
              ),
            ),
          ),
          Text(
            author,
            style: getBoldStyle(
              fontColor: AppColorManagement.subtitle,
              fontSize: 8,
            ),
          ),
          Rating(star: rating),
        ],
      ),
    );
  }
}
