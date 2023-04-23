import 'package:flutter/material.dart';

import '../../res/export_resources.dart';

class WishlistButton extends StatelessWidget {
  const WishlistButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 86,
        height: 26,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColorManagement.onBackground,
        ),
        child: Center(
          child: Text(
            '+ Add to wishlist',
            style: getExtraBoldStyle(
              fontColor: AppColorManagement.background,
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }
}
