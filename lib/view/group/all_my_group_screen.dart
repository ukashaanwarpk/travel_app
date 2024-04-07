import 'package:flutter/material.dart';
import 'package:travel_app/resources/common/appBar/app_bar.dart';
import 'package:travel_app/resources/common/layout/list_layout.dart';
import 'package:travel_app/utils/constant/images_strings.dart';
import 'package:travel_app/utils/constant/sizes.dart';
import 'package:travel_app/view/group/widget/suggested_group.dart';
class AllMyGroupScreen extends StatelessWidget {
  const AllMyGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(
        title: Text("My Group"),
        centerTitle: true,
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TListLayout(itemCount: 10, itemBuilder: (context, index){
                return const TSuggestedGroup(title: 'Pack & Go Heaven', subTitle: '2 new Message', image: TImages.city);
              })

            ],
          ),
        ),
      ),
    );
  }
}
