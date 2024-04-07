import 'package:flutter/material.dart';
import 'package:travel_app/resources/common/appBar/app_bar.dart';
import 'package:travel_app/utils/constant/color.dart';
import 'package:travel_app/view/detail/widgets/bottom_card.dart';
import 'package:travel_app/view/detail/widgets/review_screen.dart';
import 'description_screen.dart';
import 'widgets/details_screen_image_.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Hyde Park"),
        showBackArrow: true,
      ),
      bottomNavigationBar: const TBottomCard(),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              const SliverToBoxAdapter(
                child: DetailScreenImage(),
              ),
              const SliverToBoxAdapter(
                child: TabBar(
                  unselectedLabelColor: TColors.dark,
                  labelColor: TColors.primary,
                  indicatorColor: TColors.primary,
                  dividerHeight: 0,
                  tabAlignment: TabAlignment.fill,
                  tabs: [
                    Tab(
                      child: Text("Descriptions"),
                    ),
                    Tab(
                      child: Text(
                        "Reviews",
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              DescriptionScreen(),
              ReviewScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
