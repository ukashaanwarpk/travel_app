
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constant/images_strings.dart';
import '../../utils/popups/full_screen_loader.dart';
import '../../utils/popups/loaders.dart';
import 'authentication_repository.dart';

class LoginController extends GetxController{
  static LoginController get instance => Get.find();

  final hidePassword = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();




  Future<void> emailAndPasswordSignIn()async{

    try{

      TFullScreenLoader.openLoadingDialog('Logging you in...', TImages.docerAnimation);


      if (loginFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();

      }

      final userCredential = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      TFullScreenLoader.stopLoading();

      AuthenticationRepository.instance.screenRedirect();

    }
    catch (e){
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }

}