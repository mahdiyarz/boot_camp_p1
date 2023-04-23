import 'package:flutter/material.dart';

import '../../res/export_resources.dart';
import '../../widgets/rating.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 24,
          ),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child:
                Image.asset(AppAssetsManagement.profile, fit: BoxFit.contain),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dust Jacket',
                  style: getExtraBoldStyle(
                    fontColor: AppColorManagement.onBackground,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'By Pisco Pirinto',
                  style: getRegularStyle(
                    fontColor: AppColorManagement.headline,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const Rating(star: 5),
                    Text(
                      '| 1,500 Reads',
                      style: getBoldStyle(
                        fontColor: AppColorManagement.disable,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Text(
            '\$10.00',
            style: getBoldStyle(
              fontColor: AppColorManagement.primary,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
    );
  }
}
