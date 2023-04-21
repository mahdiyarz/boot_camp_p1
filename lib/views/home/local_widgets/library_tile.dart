import 'package:flutter/material.dart';

import '../../res/app_color_management.dart';
import '../../res/app_style_management.dart';

class LibraryTile extends StatelessWidget {
  final String picture;
  final String title;
  final int percentReading;
  const LibraryTile({
    required this.picture,
    required this.title,
    required this.percentReading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 117,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(picture),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              title,
              style: getBoldStyle(
                fontColor: AppColorManagement.headline,
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 86,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: AppColorManagement.disable,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    Container(
                      width: 86 - (86 * (1 - (percentReading / 100))),
                      height: 4,
                      decoration: const BoxDecoration(
                          color: AppColorManagement.onBackground,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                  ],
                ),
                Text(
                  '${percentReading.toString()}%',
                  style: getBoldStyle(
                    fontColor: AppColorManagement.headline,
                    fontSize: 8,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
