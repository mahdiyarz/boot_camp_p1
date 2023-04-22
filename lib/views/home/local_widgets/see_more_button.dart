import 'package:flutter/material.dart';

import '../../res/app_color_management.dart';
import '../../res/app_style_management.dart';

class SeeMoreButton extends StatelessWidget {
  const SeeMoreButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 18,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColorManagement.disable,
          width: .5,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          'See More',
          style: getMediumStyle(
            fontColor: AppColorManagement.primary,
          ),
        ),
      ),
    );
  }
}
