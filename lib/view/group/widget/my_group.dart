import 'package:flutter/material.dart';

import '../../../resources/common/custom_shapes/containers/rounded_container.dart';
import '../../../resources/common/images/round_image.dart';
import '../../../utils/constant/color.dart';
import '../../../utils/constant/sizes.dart';
class TMyGroup extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final void Function()? onTap;
  const TMyGroup({
    super.key, required this.title, required this.subTitle, required this.image, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        child: Row(
          children: [
            TRoundedImage(
              imageUrl: image,
              borderRadius: 10,
              height: 40,
              width: 40,
            ),
            const SizedBox(
              width: TSizes.md,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(title,style: Theme.of(context).textTheme.bodyMedium!.copyWith(overflow: TextOverflow.ellipsis, ),),
                  Text(
                    subTitle,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: TColors.subText),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}