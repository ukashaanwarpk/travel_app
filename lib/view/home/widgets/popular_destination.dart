import 'package:flutter/material.dart';

import '../../../resources/common/layout/grid_layout.dart';
import '../../../resources/common/products/product_card/product_card_vertical.dart';
import '../../../resources/common/text/section_heading.dart';
import '../../../utils/constant/sizes.dart';
import '../../../utils/constant/text_string.dart';

class TPopularDestinationCard extends StatelessWidget {
  const TPopularDestinationCard({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.defaultSpace, right: TSizes.defaultSpace),
      child: Column(
        children: [
          const TSectionHeading(
            title: TTexts.popularDestinations,
          ),
          const SizedBox(height: TSizes.spaceBtwItems,),
          TGridLayout(itemCount: 2,
              mainAxisExtent:size.height*0.25,
              itemBuilder: (context, index){
                return const TProductCardVertical(
                  title: 'Paris',

                );
              }
          ),
          const SizedBox(height: TSizes.spaceBtwItems,),

        ],
      ),
    );
  }
}