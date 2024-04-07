import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/view/detail/booking_details.dart';
import '../../../utils/constant/color.dart';
import '../../../utils/constant/sizes.dart';

class TBottomCard extends StatelessWidget {

  const TBottomCard({super.key,});

  @override
  Widget build(BuildContext context) {

    return Container(
        padding: const EdgeInsets.symmetric(
            horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
        decoration: const BoxDecoration(
            color:  TColors.light,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(TSizes.cardRadiusLg),
              topRight: Radius.circular(TSizes.cardRadiusLg),
            )),
        child: Row(
          children: [
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace*2.5),
              child: Text("Free", style:Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight:FontWeight.w600 )),
            ),

            Padding(
              padding: const EdgeInsets.only(right: TSizes.defaultSpace*2),
              child: ElevatedButton(
                onPressed: () => Get.to(()=>const BookingDetailsScreen()),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(TSizes.md),
                  backgroundColor: TColors.primary,
                  side: const BorderSide(color: TColors.primary),
                ),
                child: const Text('Proceed'),
              ),
            ),
          ],
        )

    );
  }
}
//