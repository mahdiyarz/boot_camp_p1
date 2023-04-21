import 'package:boot_camp_p1/views/res/app_color_management.dart';
import 'package:flutter/material.dart';

import '../res/app_assets_management.dart';
import '../res/app_style_management.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 3.6,
                    vertical: 4.8,
                  ),
                  child: Image.asset(
                    AppAssetsManagement.menu,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
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
                ),
                Container(
                  width: 28,
                  height: 28,
                  padding: const EdgeInsets.all(3),
                  child: Image.asset(AppAssetsManagement.scan),
                ),
                Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                    vertical: 1,
                  ),
                  child: Image.asset(AppAssetsManagement.notification),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Hi Emily,',
              style: getRegularStyle(
                fontColor: AppColorManagement.onBackground,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'My Library',
              style: getExtraBoldStyle(
                fontColor: AppColorManagement.onBackground,
              ),
            ),
            // ListView(
            //   shrinkWrap: true,
            //   physics: const BouncingScrollPhysics(
            //       parent: AlwaysScrollableScrollPhysics()),
            //   scrollDirection: Axis.horizontal,
            // ),
          ],
        ),
      ),
    );
  }
}
