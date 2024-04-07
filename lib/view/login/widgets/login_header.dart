import 'package:flutter/material.dart';
import '../../../utils/constant/images_strings.dart';
import '../../../utils/constant/sizes.dart';
import '../../../utils/constant/text_string.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(
            width: 100,
            height: 150,
            image:  AssetImage(TImages.logo),),
          Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
          const SizedBox(height: TSizes.sm,),
          Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
        ],
      ),
    );
  }
}