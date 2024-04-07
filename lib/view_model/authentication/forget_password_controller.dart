import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constant/images_strings.dart';
import '../../utils/popups/full_screen_loader.dart';
import '../../utils/popups/loaders.dart';
import '../../view/forget/reset_password_screen.dart';
import 'authentication_repository.dart';



class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();


  sendPasswordResetEmail()async{
    try{
      TFullScreenLoader.openLoadingDialog('Processing your Request...', TImages.docerAnimation);



      if(!forgetPasswordFormKey.currentState!.validate()){
        TFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance.sendPasswordResetEmail(email.text.trim());

      TFullScreenLoader.stopLoading();

      TLoaders.successSnackBar(title: 'Email Sent', message: 'Email Link Sent to Reset your password'.tr);

      Get.to(()=> ResetPasswordScreen(email: email.text.trim(),));


    }
    catch (e){
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }


  resendPasswordResetEmail(String email)async{
    try{
      TFullScreenLoader.openLoadingDialog('Processing your Request...', TImages.docerAnimation);




      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      TFullScreenLoader.stopLoading();

      TLoaders.successSnackBar(title: 'Email Sent', message: 'Email Link Sent to Reset your password'.tr);




    }
    catch (e){
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }


}