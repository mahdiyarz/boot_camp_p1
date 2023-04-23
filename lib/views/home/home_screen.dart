import 'package:boot_camp_p1/views/cart/cart_screen.dart';
import 'package:boot_camp_p1/views/community/community_screen.dart';
import 'package:boot_camp_p1/views/explore/explore_screen.dart';
import 'package:boot_camp_p1/views/my_library/my_library_screen.dart';
import 'package:boot_camp_p1/views/res/app_assets_management.dart';
import 'package:boot_camp_p1/views/res/app_color_management.dart';
import 'package:boot_camp_p1/views/res/app_style_management.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    List<Map<String, dynamic>> tabPages = [
      {
        'page': const MyLibraryScreen(),
        'icon': AppAssetsManagement.library,
        'selectedIcon': AppAssetsManagement.librarySelected,
        'title': 'My Library',
      },
      {
        'page': const ExploreScreen(),
        'icon': AppAssetsManagement.explore,
        'selectedIcon': AppAssetsManagement.exploreSelected,
        'title': 'Explore',
      },
      {
        'page': const CartScreen(),
        'icon': AppAssetsManagement.cart,
        'selectedIcon': AppAssetsManagement.cart,
        'title': 'Cart',
      },
      {
        'page': const CommunityScreen(),
        'icon': AppAssetsManagement.community,
        'selectedIcon': AppAssetsManagement.community,
        'title': 'Community',
      },
    ];

    return Scaffold(
      body: Column(
        children: [
          Expanded(child: tabPages[_selectedIndex]['page'] as Widget),
          Container(
            width: deviceSize.width,
            height: 70,
            decoration: const BoxDecoration(
              color: AppColorManagement.background,
              boxShadow: [
                BoxShadow(
                  color: AppColorManagement.disable,
                  offset: Offset(0, 0),
                  blurRadius: 10,
                ),
              ],
            ),
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: false,
              padding: const EdgeInsets.only(top: 15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemCount: 4,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                    HapticFeedback.lightImpact();
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Image.asset(
                        index == _selectedIndex
                            ? tabPages[index]['selectedIcon']
                            : tabPages[index]['icon'],
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      tabPages[index]['title'],
                      style: index == _selectedIndex
                          ? getMediumStyle(
                              fontColor: AppColorManagement.onBackground)
                          : getMediumStyle(
                              fontColor: AppColorManagement.subtitle),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
