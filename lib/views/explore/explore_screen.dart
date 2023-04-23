import 'package:boot_camp_p1/views/book_review/book_review_screen.dart';
import 'package:flutter/material.dart';

import '../res/export_resources.dart';
import '../widgets/export_widgets.dart';
import 'local_widgets/banner_paging.dart';
import 'local_widgets/categories_tile.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final PageController _pageController =
      PageController(viewportFraction: 0.85, initialPage: 0);

  int pageIndex = 0;
  int catIndex = 0;

  List<String> catTitles = [
    'All',
    'Arts',
    'Biography',
    'Romance',
    'Thriller',
    'Fiction',
    'Crime',
    'Movies',
    'Religious',
    'Historical',
    'Sociology',
    'Cooking',
  ];

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
          SizedBox(
              height: 150,
              child: PageView(
                pageSnapping: true,
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    pageIndex = value;
                  });
                },
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Image.asset(AppAssetsManagement.banner),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Image.asset(AppAssetsManagement.banner),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Image.asset(AppAssetsManagement.banner),
                  ),
                ],
              )),
          const SizedBox(
            height: 10,
          ),
          BannerPaging(pageIndex: pageIndex),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              'Categories',
              style: getExtraBoldStyle(
                fontColor: AppColorManagement.onBackground,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 26),
            height: 25,
            // color: Colors.red,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.horizontal,
              itemCount: catTitles.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            catIndex = index;
                          });
                        },
                        child: Text(
                          catTitles[index],
                          style: getBoldStyle(
                            fontColor: AppColorManagement.subtitle,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(microseconds: 500),
                        curve: Curves.easeInOutCubic,
                        height: catIndex == index ? 2 : 0,
                        width: catIndex == index ? 15 : 0,
                        decoration: const BoxDecoration(
                          color: AppColorManagement.primary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 100 / 178.45,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                children: [
                  CategoriesTile(
                    imagePath: AppAssetsManagement.categoryBook1,
                    title: 'The Story of Marie Curie',
                    author: 'Susan R Katy',
                    rating: 4,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookReviewScreen(),
                      ),
                    ),
                  ),
                  CategoriesTile(
                    imagePath: AppAssetsManagement.categoryBook2,
                    title: 'At Home with Mohammed Ali',
                    author: 'Hana Alli',
                    rating: 3,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookReviewScreen(),
                      ),
                    ),
                  ),
                  CategoriesTile(
                    imagePath: AppAssetsManagement.categoryBook3,
                    title: 'Malcolm X',
                    author: 'Alex Haley',
                    rating: 5,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookReviewScreen(),
                      ),
                    ),
                  ),
                  CategoriesTile(
                    imagePath: AppAssetsManagement.categoryBook4,
                    title: 'Becoming Michelle Obama',
                    author: 'Michelle Obama',
                    rating: 4,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookReviewScreen(),
                      ),
                    ),
                  ),
                  CategoriesTile(
                    imagePath: AppAssetsManagement.categoryBook5,
                    title: 'The Story of Walt Disney',
                    author: 'Susan R Katy',
                    rating: 4,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookReviewScreen(),
                      ),
                    ),
                  ),
                  CategoriesTile(
                    imagePath: AppAssetsManagement.categoryBook6,
                    title: 'The Happiest Man on Earth',
                    author: 'Author Name',
                    rating: 5,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookReviewScreen(),
                      ),
                    ),
                  ),
                  CategoriesTile(
                    imagePath: AppAssetsManagement.categoryBook4,
                    title: 'Becoming Michelle Obama',
                    author: 'Michelle Obama',
                    rating: 4,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookReviewScreen(),
                      ),
                    ),
                  ),
                  CategoriesTile(
                    imagePath: AppAssetsManagement.categoryBook3,
                    title: 'Malcolm X',
                    author: 'Alex Haley',
                    rating: 5,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookReviewScreen(),
                      ),
                    ),
                  ),
                  CategoriesTile(
                    imagePath: AppAssetsManagement.categoryBook1,
                    title: 'The Story of Marie Curie',
                    author: 'Susan R Katy',
                    rating: 2,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookReviewScreen(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
