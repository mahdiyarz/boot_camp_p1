import 'package:flutter/material.dart';

import '../../res/app_color_management.dart';
import '../../res/app_style_management.dart';

class DiscoverButton extends StatelessWidget {
  const DiscoverButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 117,
      margin: const EdgeInsets.only(bottom: 54),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColorManagement.disable,
          width: 2,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.add,
            color: AppColorManagement.onDisable,
            size: 25,
          ),
          Text(
            'Discover More',
            style: getBoldStyle(
              fontColor: AppColorManagement.onDisable,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
