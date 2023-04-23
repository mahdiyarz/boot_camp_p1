import 'package:flutter/material.dart';

import '../res/export_resources.dart';
import '../widgets/export_widgets.dart';
import 'local_widgets/export_home_widgets.dart';

class MyLibraryScreen extends StatelessWidget {
  const MyLibraryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              const SizedBox(
                width: 24,
              ),
              Expanded(
                child: Text(
                  'My Wishlist',
                  style: getExtraBoldStyle(
                    fontColor: AppColorManagement.primary,
                  ),
                ),
              ),
              const SeeMoreButton(),
              const SizedBox(
                width: 24,
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 138 / 85,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 3,
                ),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                children: const [
                  WishlistTile(
                    imagePath: AppAssetsManagement.wishlistBook1,
                    title: 'Good Company',
                    author: 'Cynthia D.S',
                    star: 4,
                  ),
                  WishlistTile(
                    imagePath: AppAssetsManagement.wishlistBook2,
                    title: 'Book Lovers',
                    author: 'Emily Henry',
                    star: 5,
                  ),
                  WishlistTile(
                    imagePath: AppAssetsManagement.wishlistBook3,
                    title: 'Leaving Time',
                    author: 'Jodi Picoult',
                    star: 3,
                  ),
                  WishlistTile(
                    imagePath: AppAssetsManagement.wishlistBook4,
                    title: 'Silent Scream',
                    author: 'Angela Marsons',
                    star: 4,
                  ),
                  WishlistTile(
                    imagePath: AppAssetsManagement.wishlistBook5,
                    title: 'The Kite Runner',
                    author: 'Khaled Hosseini',
                    star: 5,
                  ),
                  WishlistTile(
                    imagePath: AppAssetsManagement.wishlistBook6,
                    title: 'Father of the Rain',
                    author: 'Lily King',
                    star: 4,
                  ),
                  WishlistTile(
                    imagePath: AppAssetsManagement.wishlistBook3,
                    title: 'Leaving Time',
                    author: 'Jodi Picoult',
                    star: 3,
                  ),
                  WishlistTile(
                    imagePath: AppAssetsManagement.wishlistBook1,
                    title: 'Good Company',
                    author: 'Cynthia D.S',
                    star: 4,
                  ),
                  WishlistTile(
                    imagePath: AppAssetsManagement.wishlistBook4,
                    title: 'Silent Scream',
                    author: 'Angela Marsons',
                    star: 4,
                  ),
                ],
              ),
            ),
          ),
          // const SizedBox(
          //   height: 75,
          // ),
        ],
      ),
    );
  }
}
