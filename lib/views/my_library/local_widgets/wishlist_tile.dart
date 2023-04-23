import 'package:flutter/material.dart';

import '../../res/export_resources.dart';
import '../../widgets/rating.dart';

class WishlistTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String author;
  final int star;
  const WishlistTile({
    required this.imagePath,
    required this.title,
    required this.author,
    required this.star,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 60,
          height: 85,
          child: Image.asset(imagePath),
        ),
        const SizedBox(
          width: 8,
        ),
        SizedBox(
          height: 85,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: getBoldStyle(
                  fontColor: AppColorManagement.onBackground,
                ),
              ),
              Text(
                author,
                style: getBoldStyle(
                  fontColor: AppColorManagement.subtitle,
                ),
              ),
              const Expanded(child: SizedBox()),
              Rating(star: star),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        )
      ],
    );
  }
}
