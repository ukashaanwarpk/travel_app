import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:travel_app/navigation_menu.dart';
import '../../view/login/login_screen.dart';
import '../../view/signup/verify_email_screen.dart';



class AuthenticationRepository extends GetxController{

  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;



  @override
  void onReady() {

    FlutterNativeSplash.remove();
    screenRedirect();
  }
  screenRedirect() async {
    final user = _auth.currentUser;


    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      } else {

        Get.offAll(() => VerifyEmailScreen(
          email: _auth.currentUser?.email,
        ));
      }
    } else {
          Get.offAll(() => const LoginScreen());

    }
  }

  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    }
    catch (e) {
      throw 'Something went wrong, Please try again';
    }
  }


  Future<UserCredential> loginWithEmailAndPassword(String email, String password)async{
    try{
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    }
    catch (e){
      throw 'Something went wrong, Please try again';
    }
  }

  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } catch (e) {
      throw 'Something went wrong, Please try again';
    }
  }

  Future<void> sendPasswordResetEmail(String email)async{
    try{
      await _auth.sendPasswordResetEmail(email: email);
    }
    catch (e){
      throw "Something went wrong, Please try again";
    }
  }



  // reAuthenticate
  Future<void> reAuthenticateWithEmailAndPassword(String email, String password)async{
    try{
      AuthCredential credential = EmailAuthProvider.credential(email: email, password: password);

      await _auth.currentUser!.reauthenticateWithCredential(credential);
    }
    catch (e){
      throw "Something went wrong, Please try again";
    }
  }


  Future<void> logOut()async{
    try{
      await FirebaseAuth.instance.signOut();
      Get.offAll(()=>const LoginScreen());
    }
    catch (e){
      throw 'Something went wrong, Please try again';
    }
  }


}