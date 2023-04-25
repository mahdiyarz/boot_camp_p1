import 'package:flutter/material.dart';

class HighlightContainer extends StatelessWidget {
  final Color color;
  const HighlightContainer({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Container(
      width: deviceSize.width / 3.64,
      height: 3,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
