import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/view/detail/details_screen.dart';
import '../../../../utils/constant/color.dart';
import '../../../../utils/constant/images_strings.dart';
import '../../../../utils/constant/sizes.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../images/round_image.dart';

class TProductCardVertical extends StatelessWidget {
  final String title;


  const TProductCardVertical({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: (){
        Get.to(()=>const DetailsScreen());
      },
      child: TRoundedContainer(
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
                decoration:  BoxDecoration(
                    color: TColors.containerBorder,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(TSizes.md),
                      bottomRight: Radius.circular(TSizes.md),
                    ),),
                child:Center(
                  child: Text(
                    title,
                    style: const TextStyle(color: TColors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
