import 'package:flutter/material.dart';

import '../res/export_resources.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.star,
  });

  final int star;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_rate_rounded,
          size: 10,
          color: star >= 1
              ? AppColorManagement.primary
              : AppColorManagement.disable,
        ),
        Icon(
          Icons.star_rate_rounded,
          size: 10,
          color: star >= 2
              ? AppColorManagement.primary
              : AppColorManagement.disable,
        ),
        Icon(
          Icons.star_rate_rounded,
          size: 10,
          color: star >= 3
              ? AppColorManagement.primary
              : AppColorManagement.disable,
        ),
        Icon(
          Icons.star_rate_rounded,
          size: 10,
          color: star >= 4
              ? AppColorManagement.primary
              : AppColorManagement.disable,
        ),
        Icon(
          Icons.star_rate_rounded,
          size: 10,
          color: star >= 5
              ? AppColorManagement.primary
              : AppColorManagement.disable,
        ),
      ],
    );
  }
}
