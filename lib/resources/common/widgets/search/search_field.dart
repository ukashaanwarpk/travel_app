

import 'package:flutter/material.dart';

import '../../../../utils/constant/color.dart';
import '../../../../utils/constant/sizes.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: const TextStyle(color: Colors.grey),
        contentPadding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),

        border: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(width: 1, color: TColors.grey),
        ),
        focusedBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(width: 1, color: TColors.dark),
        ),
        enabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(width: 1, color: TColors.grey),
        ),
      ),
    );
  }
}