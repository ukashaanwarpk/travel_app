import 'package:flutter/material.dart';

import '../../../utils/constant/sizes.dart';
import '../../../utils/constant/text_string.dart';
import 'home_categories.dart';

class THomeCategory extends StatelessWidget {
  const THomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.md, top: TSizes.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.explore,style: Theme.of(context).textTheme.bodyLarge,),
          const SizedBox(height: TSizes.spaceBtwItems,),
          const THomeCategories(),
        ],
      ),
    );
  }
}