import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/resources/common/appBar/app_bar.dart';
import 'package:travel_app/resources/common/layout/grid_layout.dart';
import 'package:travel_app/resources/common/layout/list_layout.dart';
import 'package:travel_app/resources/common/text/section_heading.dart';
import 'package:travel_app/utils/constant/color.dart';
import 'package:travel_app/utils/constant/sizes.dart';
import 'package:travel_app/view/group/all_my_group_screen.dart';
import 'package:travel_app/view/group/widget/suggested_group.dart';

import '../../utils/constant/images_strings.dart';
import 'widget/my_group.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: const Text("Groups"),
        centerTitle: true,
        actions: [
          Text(
            'Create',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: TColors.primary),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
               TSectionHeading(
                title: 'My Groups',
                onPressed: ()=>Get.to(()=>const AllMyGroupScreen()),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  TGridLayout(
                    itemCount: 6,
                    mainAxisExtent: 40,
                    itemBuilder: (_, __) {
                      return  const TMyGroup(
                        image: TImages.city,
                        title: 'Pack & Go Heaven ',
                        subTitle: '1 new Message',

                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const TSectionHeading(
                title: 'Suggested Groups',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TListLayout(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const TSuggestedGroup(
                    image: TImages.building,
                    title: 'First Class Tribe',
                    subTitle: '53 members',
                    showButton: true,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
