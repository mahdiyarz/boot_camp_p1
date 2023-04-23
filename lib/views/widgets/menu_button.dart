import 'package:flutter/material.dart';

import '../res/export_resources.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 24,
        height: 24,
        child: Image.asset(
          AppAssetsManagement.menu,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
