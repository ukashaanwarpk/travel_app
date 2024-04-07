import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../resources/common/custom_shapes/containers/circular_container.dart';
import '../../../resources/common/custom_shapes/containers/rounded_container.dart';
import '../../../resources/common/images/round_image.dart';
import '../../../utils/constant/color.dart';
import '../../../utils/constant/images_strings.dart';
import '../../../utils/constant/sizes.dart';

class DetailScreenImage extends StatelessWidget {
  const DetailScreenImage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [TImages.city,TImages.city,TImages.city,];
    final CarouselController carouselController = CarouselController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Column(
        children: [
          Stack(
            children: [
              CarouselSlider(
                carouselController: carouselController,
                items: images.map((e) => TRoundedImage(imageUrl: e, width: double.infinity,)).toList(),
                options: CarouselOptions(
                  viewportFraction: 1,

                ),
              ),
              // const TRoundedImage(imageUrl: TImages.city),
              Positioned(
                top: TSizes.md,
                right: TSizes.md,
                child: TRoundedContainer(
                  height: 40,
                  width: 40,
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Iconsax.heart)),
                ),
              ),
              Positioned(
                bottom: 70,
                right: TSizes.md,
                child: CircularContainer(
                  height: 40,
                  width: 40,
                  backgroundColor: TColors.containerBorder,
                  child: IconButton(
                      onPressed: () {
                        carouselController.nextPage();
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: TColors.white,
                      )),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: TColors.containerBorder,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(TSizes.md),
                      bottomRight: Radius.circular(TSizes.md),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Iconsax.star1,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: TSizes.xs,
                      ),
                      Text(
                        '4.8',
                        style: TextStyle(color: TColors.white),
                      ),
                      SizedBox(
                        width: TSizes.xs,
                      ),
                      Text(
                        "(102 ratings)",
                        style: TextStyle(color: TColors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.sm,
          ),
          SizedBox(
            height: 30,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 3,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const TRoundedContainer(
                  margin: EdgeInsets.all(2),
                  child: TRoundedImage(
                    fit: BoxFit.cover,
                    height: 40,
                    borderRadius: 4,
                    imageUrl: 'assets/images/image-2.jpg',
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
        ],
      ),
    );
  }
}
