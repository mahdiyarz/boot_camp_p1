import 'package:flutter/material.dart';

import '../../res/export_resources.dart';
import 'highlight_container.dart';
import 'review_button.dart';

class ReviewPanel extends StatefulWidget {
  const ReviewPanel({super.key});

  @override
  State<ReviewPanel> createState() => _ReviewPanelState();
}

class _ReviewPanelState extends State<ReviewPanel> {
  int titleIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: Row(
            children: [
              ReviewButton(
                onTap: () {
                  setState(() {
                    titleIndex = 0;
                  });
                },
                title: 'About',
              ),
              ReviewButton(
                onTap: () {
                  setState(() {
                    titleIndex = 1;
                  });
                },
                title: 'Reviews',
              ),
              ReviewButton(
                onTap: () {
                  setState(() {
                    titleIndex = 2;
                  });
                },
                title: 'Author',
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 34),
              width: double.infinity,
              height: 3,
              decoration: BoxDecoration(
                color: AppColorManagement.disable,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HighlightContainer(
                    color: titleIndex == 0
                        ? AppColorManagement.primary
                        : AppColorManagement.disable,
                  ),
                  HighlightContainer(
                    color: titleIndex == 1
                        ? AppColorManagement.primary
                        : AppColorManagement.disable,
                  ),
                  HighlightContainer(
                    color: titleIndex == 2
                        ? AppColorManagement.primary
                        : AppColorManagement.disable,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 34),
              width: double.infinity,
              height: deviceSize.height - 550,
              child: SingleChildScrollView(
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. Faucibus tellus bibendum egestas dui facilisis vitae porttitor. Tristique est ipsum proin vestibulum lacus orci. Non ipsum sapien velit vitae magna quam. Cursus tempor nulla imperdiet tortor habitant arcu. Eu venenatis diam facilisis eu leo pellentesque quam ullamcorper malesuada. Facilisis diam mattis justo vel feugiat sagittis tortor urna. Arcu aliquam pellentesque lorem elit neque gravida. Bibendum bibendum feugiat facilisi viverra vitae tortor scelerisque facilisis orci. Lorem ipsum dolor sit amet consectetur. Faucibus tellus bibendum egestas dui facilisis vitae porttitor. Tristique est ipsum proin vestibulum lacus orci. Non ipsum sapien velit vitae magna quam. Cursus tempor nulla imperdiet tortor habitant arcu. Eu venenatis diam facilisis eu leo pellentesque quam ullamcorper malesuada. Facilisis diam mattis justo vel feugiat sagittis tortor urna. Arcu aliquam pellentesque lorem elit neque gravida. Bibendum bibendum feugiat facilisi viverra vitae tortor scelerisque facilisis orci. Lorem ipsum dolor sit amet consectetur. Faucibus tellus bibendum egestas dui facilisis vitae porttitor. Tristique est ipsum proin vestibulum lacus orci. Non ipsum sapien velit vitae magna quam. Cursus tempor nulla imperdiet tortor habitant arcu. Eu venenatis diam facilisis eu leo pellentesque quam ullamcorper malesuada. Facilisis diam mattis justo vel feugiat sagittis tortor urna. Arcu aliquam pellentesque lorem elit neque gravida. Bibendum bibendum feugiat facilisi viverra vitae tortor scelerisque facilisis orci.',
                  style: reviewGetRegularStyle(
                    fontColor: AppColorManagement.onDisable,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: deviceSize.height - 630),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColorManagement.background,
                    AppColorManagement.background.withOpacity(.7),
                    AppColorManagement.background.withOpacity(.5),
                    AppColorManagement.background.withOpacity(.2),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  size: 15,
                ),
                label: Text(
                  'Add to Cart',
                  style: getBoldStyle(
                    fontColor: AppColorManagement.background,
                    fontSize: 12,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColorManagement.primary,
                  fixedSize: const Size(149, 35),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
