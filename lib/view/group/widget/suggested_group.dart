
import 'package:flutter/material.dart';

import '../../../resources/common/custom_shapes/containers/rounded_container.dart';
import '../../../resources/common/images/round_image.dart';
import '../../../utils/constant/color.dart';
import '../../../utils/constant/sizes.dart';
class TSuggestedGroup extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final bool showButton;
  const TSuggestedGroup({
    super.key, required this.title, required this.subTitle, required this.image,
    this.showButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      child: Row(
        children: [
          TRoundedImage(
            imageUrl: image,
            height: 70,
            width: 70,
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
          ),
         showButton ? SizedBox(
            width: 100,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: TColors.buttonEle.withOpacity(0.25),
                foregroundColor: TColors.black,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                
                side: BorderSide(
                  color: TColors.buttonEle.withOpacity(0.25),
                ),
              ),
                onPressed: (){}, child: Text("Join",style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: TColors.black),)),
          ): const SizedBox(),
        ],
      ),
    );
  }
}