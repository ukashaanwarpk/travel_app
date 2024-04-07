import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:travel_app/view/detail/widgets/services_Item.dart';

import '../../utils/constant/sizes.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(left:  TSizes.defaultSpace, right: TSizes.defaultSpace,),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
       physics: const NeverScrollableScrollPhysics(),
      children:  [
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
         const ReadMoreText(
          "King Henry VIII is said to have commandeered land owned by Catholic monks in the 1500s to have more space to roam and hunt for himself. Thankfully, King Charles I opened Hyde Park to the public in 1637, and well, the rest is history. Colloquially known as the ‘lungs of London’, the Royal Parks play host to millions of visitors each year, with children prancing in fountains, families enjoying sunny picnics, couples taking romantic walks through the forests and friends competing in marathons. We invite you to explore the beauty and biodiversity of London’s Royal Parks for a moment or two of blissful respite before a trip to the theatre or a day’s shopping during your trip to the capital. Here is our guide to the eight Royal Parks of London.",
          trimCollapsedText: 'Read more',
          trimExpandedText: 'Read less',
          textDirection: TextDirection.ltr,
          textScaleFactor: 1,
          trimLines: 3,
          trimMode: TrimMode.Line,
          textAlign: TextAlign.start,
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),

                 ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "More Details",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            const TServicesItems(
              icon: Icons.access_time,
              title: 'Opening Time:',
              subTitle: '5am - 12 pm',
            ),
            const SizedBox(
              height: TSizes.sm,
            ),
            const TServicesItems(
              icon: Iconsax.support,
              title: 'Ask for support:',
              subTitle: '+23123434564',
            ),
            const SizedBox(
              height: TSizes.sm,
            ),
            const TServicesItems(
              icon: Icons.food_bank_outlined,
              title: 'Edibles:',
              subTitle: 'Food & drinks available',
            ),
            const SizedBox(
              height: TSizes.sm,
            ),
            const TServicesItems(
              icon: Iconsax.location,
              title: 'Distance:',
              subTitle: '2 Km away from Mayfair',
            ),
          ],
        ),

      ],
    );
  }
}


