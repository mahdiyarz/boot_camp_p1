import 'package:boot_camp_p1/views/res/app_color_management.dart';
import 'package:flutter/material.dart';

import '../res/app_assets_management.dart';
import '../res/app_style_management.dart';
import 'local_widgets/bell_notification.dart';
import 'local_widgets/discover_button.dart';
import 'local_widgets/library_tile.dart';
import 'local_widgets/menu_button.dart';
import 'local_widgets/scan_button.dart';
import 'local_widgets/search_bar.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              MenuButton(),
              SearchBar(),
              ScanButton(),
              BellNotification(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              'Hi Emily,',
              style: getRegularStyle(
                fontColor: AppColorManagement.onBackground,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              'My Library',
              style: getExtraBoldStyle(
                fontColor: AppColorManagement.onBackground,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 210,
            child: ListView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.horizontal,
              children: const [
                SizedBox(
                  width: 24,
                ),
                LibraryTile(
                  title: 'Name of Book',
                  picture: AppAssetsManagement.libraryBook1,
                  percentReading: 100,
                ),
                SizedBox(
                  width: 17,
                ),
                LibraryTile(
                  title: 'Name of Book',
                  picture: AppAssetsManagement.libraryBook2,
                  percentReading: 60,
                ),
                SizedBox(
                  width: 17,
                ),
                DiscoverButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
