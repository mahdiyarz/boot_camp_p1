import 'package:flutter/material.dart';

import '/views/res/export_resources.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppAssetsManagement.cart),
            Text(
              'Cart Screen',
              style: getExtraBoldStyle(
                fontColor: AppColorManagement.onDisable,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
