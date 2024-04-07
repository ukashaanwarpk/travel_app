import 'package:flutter/material.dart';

import '../../../utils/constant/color.dart';

class TServicesItems extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  const TServicesItems({
    super.key, required this.title, required this.subTitle, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,),
          child: Icon(icon, color: TColors.info.withOpacity(0.40),),
        ),
        Expanded(
            flex: 2,
            child: Text(title,)),
        Expanded(
            flex:2,
            child: Text(subTitle)),



      ],
    );
  }
}