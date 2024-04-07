import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constant/color.dart';
class TProfileMenu extends StatelessWidget {
  final IconData leadingIcon;
final VoidCallback onPressed;
final String text;
final IconData trailingIcon;
  const TProfileMenu({super.key, required this.leadingIcon, required this.onPressed, required this.text,  this.trailingIcon= Iconsax.arrow_right_34});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
            flex:1,
            child: Icon(leadingIcon, color: TColors.primary.withOpacity(0.40),)),
        Expanded(flex: 5,child: Text(text)),
        IconButton(onPressed: onPressed, icon: Icon(trailingIcon),),

      ],
    );

  }
}
