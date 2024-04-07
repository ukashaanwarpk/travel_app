import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constant/color.dart';
import '../../../../utils/constant/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  const TSearchContainer({
    super.key, required this.text, this.icon =Iconsax.search_normal,  this.showBackground = true,  this.showBorder = true,  this.onTap,
    this.padding =const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          padding: const EdgeInsets.all(TSizes.md),
          width: TDeviceUtils.getScreenWidth(context),
          decoration: BoxDecoration(
              color: showBackground ? dark ? TColors.dark : TColors.light : Colors.transparent,
              borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
              border: showBorder ? Border.all(color: TColors.grey) : null
          ),
          child:  Row(
            children: [
              Icon(icon, color: TColors.darkGrey,),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Text(text, style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
        ),
      ),
    );
  }
}