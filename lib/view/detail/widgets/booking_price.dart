import 'package:flutter/material.dart';

import '../../../utils/constant/sizes.dart';

class BookingPriceDetails extends StatelessWidget {
  const BookingPriceDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pricing"),
          SizedBox(
            height: TSizes.md,
          ),
          TBookingPrice(
            title: "Tour price * no of guests",
            subTitle: 'Free',
          ),
          SizedBox(
            height: TSizes.md,
          ),
          TBookingPrice(
            title: "VAT",
            subTitle: 'Free',
          ),
          SizedBox(
            height: TSizes.md,
          ),
          TBookingPrice(
            title: "Total",
            subTitle: 'Free',
          ),
        ],
      ),
    );
  }
}
class TBookingPrice extends StatelessWidget {
  final String title;
  final String subTitle;

  const TBookingPrice({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(subTitle, style: Theme.of(context).textTheme.bodyLarge,),
      ],
    );
  }
}