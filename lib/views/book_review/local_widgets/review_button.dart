import 'package:flutter/material.dart';

import '../../res/export_resources.dart';

class ReviewButton extends StatelessWidget {
  void Function() onTap;
  final String title;
  ReviewButton({required this.onTap, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: SizedBox(
        width: deviceSize.width / 3.66,
        height: 20,
        child: Center(
          child: Text(
            title,
            style: getBoldStyle(
              fontColor: AppColorManagement.headline,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
