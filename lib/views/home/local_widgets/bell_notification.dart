import 'package:flutter/material.dart';

import '../../res/app_assets_management.dart';

class BellNotification extends StatelessWidget {
  const BellNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: Image.asset(AppAssetsManagement.notification),
    );
  }
}
