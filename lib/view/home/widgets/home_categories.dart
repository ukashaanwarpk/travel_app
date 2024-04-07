
import 'package:flutter/material.dart';
import 'package:travel_app/utils/constant/images_strings.dart';

import '../../../resources/common/image_text_widgets/vertical_image_text.dart';
import '../../../utils/constant/color.dart';


class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return TVerticalImageText(
                image: TImages.hostel,
                title: 'Destination',
                textColor: TColors.dark,
                backgroundColor: TColors.borderSecondary,
                onTap: (){}
                );

            }),
      );
    }
  }

