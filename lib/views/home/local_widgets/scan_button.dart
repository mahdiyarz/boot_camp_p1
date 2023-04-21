import 'package:flutter/material.dart';

import '../../res/app_assets_management.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 28,
      height: 28,
      child: Image.asset(AppAssetsManagement.scan),
    );
  }
}
