import 'package:flutter/material.dart';
import 'package:travel_app/view/signup/widgets/signup_form.dart';

import '../../resources/common/appBar/app_bar.dart';
import '../../utils/constant/sizes.dart';
import '../../utils/constant/text_string.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const TAppBar(showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const SignupForm(),


            ],
          ),
        ),
      ),
    );
  }
}