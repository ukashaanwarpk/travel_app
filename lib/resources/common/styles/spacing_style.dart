import 'package:flutter/material.dart';
import '../../../utils/constant/sizes.dart';


class TSpacingStyle{
  static  EdgeInsetsGeometry paddingWithAppBarHeight = const EdgeInsets.only(
    top: TSizes.appBarHeight,
    bottom: TSizes.defaultSpace,
    left: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );
}