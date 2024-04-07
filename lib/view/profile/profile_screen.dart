import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app/resources/common/appBar/app_bar.dart';
import 'package:travel_app/resources/common/custom_shapes/containers/rounded_container.dart';
import 'package:travel_app/resources/common/images/circular_images.dart';
import 'package:travel_app/utils/constant/color.dart';
import 'package:travel_app/utils/constant/sizes.dart';
import 'package:travel_app/view/profile/widgets/profile_divider.dart';
import 'package:travel_app/view/profile/widgets/profile_menu.dart';
import '../../utils/constant/images_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("My Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Center(
                      child: TCircularImage(
                    image: TImages.user,
                    height: 120,
                    width: 120,
                  )),
                  GestureDetector(
                    onTap: () {},
                    child: const TRoundedContainer(
                      height: 25,
                      width: 25,
                      backgroundColor: TColors.darkGrey,
                      child: Icon(
                        Iconsax.add,
                        size: 20,
                        color: TColors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: TSizes.sm,
              ),
              const Center(child: Text("John Wick")),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Personal Information",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TRoundedContainer(
                    borderColor: TColors.primary.withOpacity(0.30),
                    radius: 10,
                    showBorder: true,
                    child: Column(
                      children: [
                        TProfileMenu(
                          leadingIcon: Iconsax.direct,
                          onPressed: () {},
                          text: 'Email Address',
                        ),
                        const TProfileDivider(),
                        TProfileMenu(
                          leadingIcon: Iconsax.money_3,
                          onPressed: () {},
                          text: 'Payment Method',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Text(
                    "Saved Items",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TRoundedContainer(
                    borderColor: TColors.primary.withOpacity(0.30),
                    radius: 10,
                    showBorder: true,
                    child: Column(
                      children: [
                        TProfileMenu(
                          leadingIcon: Iconsax.clock,
                          onPressed: () {},
                          text: 'Previous Trip',
                        ),
                        const TProfileDivider(),
                        TProfileMenu(
                          leadingIcon: Iconsax.save_2,
                          onPressed: () {},
                          text: 'Bookmarked Blogs',
                        ),
                        const TProfileDivider(),
                        TProfileMenu(
                          leadingIcon: Iconsax.heart,
                          onPressed: () {},
                          text: 'Favourite Place',
                        ),
                        const TProfileDivider(),
                        TProfileMenu(
                          leadingIcon: Iconsax.star,
                          onPressed: () {},
                          text: 'Pending Reviews',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Text(
                    "Security",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TRoundedContainer(
                    borderColor: TColors.primary.withOpacity(0.30),
                    radius: 10,
                    showBorder: true,
                    child: Column(
                      children: [
                        TProfileMenu(
                          leadingIcon: Iconsax.password_check,
                          onPressed: () {},
                          text: 'Reset Password',
                        ),
                        const TProfileDivider(),
                        TProfileMenu(
                          leadingIcon: Iconsax.user,
                          onPressed: () {},
                          text: 'Biometrics Login',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Logout"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
