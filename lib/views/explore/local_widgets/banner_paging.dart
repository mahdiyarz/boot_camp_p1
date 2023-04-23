import 'package:flutter/material.dart';

import '../../res/export_resources.dart';

class BannerPaging extends StatelessWidget {
  const BannerPaging({
    super.key,
    required this.pageIndex,
  });

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOutCubic,
          width: pageIndex == 0 ? 54 : 7,
          height: 7,
          decoration: BoxDecoration(
              color: pageIndex == 0
                  ? AppColorManagement.primary
                  : AppColorManagement.disable,
              borderRadius: const BorderRadius.all(Radius.circular(15))),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          margin: const EdgeInsets.symmetric(horizontal: 3),
          curve: Curves.easeInOutCubic,
          width: pageIndex == 1 ? 54 : 7,
          height: 7,
          decoration: BoxDecoration(
              color: pageIndex == 1
                  ? AppColorManagement.primary
                  : AppColorManagement.disable,
              borderRadius: const BorderRadius.all(Radius.circular(15))),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOutCubic,
          width: pageIndex == 2 ? 54 : 7,
          height: 7,
          decoration: BoxDecoration(
              color: pageIndex == 2
                  ? AppColorManagement.primary
                  : AppColorManagement.disable,
              borderRadius: const BorderRadius.all(Radius.circular(15))),
        ),
      ],
    );
  }
}
