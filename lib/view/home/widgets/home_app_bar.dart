import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../resources/common/appBar/app_bar.dart';
import '../../../utils/constant/text_string.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Text(TTexts.name,style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.w500),),
      leadingIcon: Iconsax.user,
      actions: const [
        Icon(Iconsax.notification)
      ],
    );
  }
}