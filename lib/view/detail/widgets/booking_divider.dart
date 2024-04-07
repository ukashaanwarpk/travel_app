
import 'package:flutter/material.dart';

import '../../../utils/constant/color.dart';

class BookingDivider extends StatelessWidget {
  const BookingDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: TColors.primary.withOpacity(0.25),
    );
  }
}