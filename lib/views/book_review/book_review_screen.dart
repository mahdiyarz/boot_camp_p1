import 'package:boot_camp_p1/views/res/app_assets_management.dart';
import 'package:flutter/material.dart';

import 'local_widgets/profile_header.dart';
import 'local_widgets/wishlist_button.dart';

class BookReviewScreen extends StatefulWidget {
  const BookReviewScreen({super.key});

  @override
  State<BookReviewScreen> createState() => _BookReviewScreenState();
}

class _BookReviewScreenState extends State<BookReviewScreen> {
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                  ),
                ),
                const WishlistButton(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: 348,
            height: 212,
            child: Image.asset(AppAssetsManagement.bookReview),
          ),
          const SizedBox(
            height: 20,
          ),
          const ProfileHeader(),
        ],
      ),
    );
  }
}
