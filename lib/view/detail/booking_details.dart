import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app/resources/common/appBar/app_bar.dart';
import 'package:travel_app/resources/common/images/round_image.dart';
import 'package:travel_app/utils/constant/color.dart';
import 'package:travel_app/utils/constant/sizes.dart';

import '../../utils/constant/images_strings.dart';
import 'widgets/booking_divider.dart';
import 'widgets/booking_price.dart';
import 'widgets/booking_date_details.dart';

class BookingDetailsScreen extends StatefulWidget {
  const BookingDetailsScreen({super.key});

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        centerTitle: true,
        title: Text("Booking"),
        showBackArrow: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace/2),
        child: ElevatedButton(onPressed: (){
        }, child: const Text("Book now"),),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Iconsax.location,
                        color: TColors.primary,
                      ),
                      SizedBox(
                        width: TSizes.sm,
                      ),
                      Text("London"),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: TSizes.sm,
                            ),
                            Text(
                              'Hyde Park',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(
                              height: TSizes.sm,
                            ),
                            const Text(
                                "This vast open space in the heart of the city is packed with things to discover. At its heart is the Serpentine, boasting panoramic lake-side paths, waterfront"),
                          ],
                        ),
                      ),
                      const Expanded(
                          child: TRoundedImage(
                        imageUrl: TImages.city,
                      )),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Iconsax.star1,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: TSizes.sm,
                        ),
                        Text("4.8"),
                        SizedBox(
                          width: TSizes.sm,
                        ),
                        Text('(102 ratings)')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const BookingDivider(),
            const BookingDateDetails(),
            const BookingDivider(),
            const BookingPriceDetails(),
          ],
        ),
      ),
    );
  }
}















