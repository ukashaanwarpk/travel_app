import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../resources/common/icon/circular_icon.dart';
import '../../../utils/constant/color.dart';
import '../../../utils/constant/sizes.dart';

class TGuestAddAndRemoveButton extends StatelessWidget {
  final int quantity;
  final VoidCallback? add, remove;
  const TGuestAddAndRemoveButton({
    super.key, required this.quantity, this.add, this.remove,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSizes.md,
          color:  TColors.black,
          backgroundColor: TColors.light,
          onPressed: remove,
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Text(quantity.toString(), style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: TSizes.spaceBtwItems,),
        TCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: TColors.white,
          backgroundColor: TColors.primary,
          onPressed: add,
        ),
      ],
    );
  }
}