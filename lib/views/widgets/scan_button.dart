import 'package:flutter/material.dart';

import '../res/export_resources.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 28,
        height: 28,
        child: Image.asset(AppAssetsManagement.scan),
      ),
    );
  }
}
