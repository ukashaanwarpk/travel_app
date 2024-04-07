import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/utils/theme/theme.dart';
import 'utils/constant/color.dart';



class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,



      home: const Scaffold(backgroundColor: TColors.primary , body: Center(child: CircularProgressIndicator(color: TColors.white,),),)


    );
  }
}
