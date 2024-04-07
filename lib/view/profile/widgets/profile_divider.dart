import 'package:flutter/material.dart';
import '../../../utils/constant/color.dart';

class TProfileDivider extends StatelessWidget {
  const TProfileDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: TColors.borderPrimary.withOpacity(0.40),
      indent: 15,
      endIndent: 15,
    );
  }
}
