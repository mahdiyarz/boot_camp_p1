import 'package:flutter/material.dart';

import '../../res/app_assets_management.dart';

class BooksBanner extends StatelessWidget {
  const BooksBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: deviceSize.width,
      height: 212,
      child: Image.asset(AppAssetsManagement.bookReview),
    );
  }
}
