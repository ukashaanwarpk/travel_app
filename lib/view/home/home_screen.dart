import 'package:flutter/material.dart';

import 'widgets/home_app_bar.dart';
import 'widgets/home_category.dart';
import 'widgets/popular_destination.dart';
import 'widgets/travel_tip_card.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
     body: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           THomeAppBar(),
           THomeCategory(),
           TPopularDestinationCard(),
           TravelTipCard(),
         ],
       ),
     ),
    );
  }
}












