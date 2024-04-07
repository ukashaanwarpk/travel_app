import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constant/color.dart';
import '../../../../utils/constant/images_strings.dart';
import '../../../../utils/constant/sizes.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../images/round_image.dart';

class TTravelTipCard extends StatelessWidget {
  final String title;
  final String? subTitle;

  const TTravelTipCard({
    super.key, required this.title,  this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      height: 120,
      width: 120,
      backgroundColor: TColors.light,
      child: Stack(
        children: [
          const TRoundedImage(
            imageUrl: TImages.building,
            applyImageRadius: true,
            isNetworkImage: false,
            width: double.infinity,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: TColors.containerBorder,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(TSizes.md),
                  bottomRight: Radius.circular(TSizes.md),
                ),),
              child:  Column(
                children: [
                  Center(
                    child: Text(
                      title,
                      style: const TextStyle(color: TColors.white),
                    ),
                  ),
                  Center(
                    child: Text(
                      subTitle.toString(),
                      style: const TextStyle(color: TColors.white, fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
