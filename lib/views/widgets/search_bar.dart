import 'package:flutter/material.dart';

import '../res/export_resources.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      width: 212,
      height: 36,
      decoration: BoxDecoration(
        color: AppColorManagement.surface,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          Image.asset(AppAssetsManagement.search),
        ],
      ),
    );
  }
}
