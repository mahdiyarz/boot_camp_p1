import 'package:flutter/material.dart';

import '../res/export_resources.dart';

class BellNotification extends StatelessWidget {
  const BellNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 24,
        height: 24,
        child: Image.asset(AppAssetsManagement.notification),
      ),
    );
  }
}
