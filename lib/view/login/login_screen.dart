import 'package:flutter/material.dart';
import '../../utils/constant/sizes.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              LoginHeader(),
              LoginForm(),

            ],
          ),
        ),
      ),
    );
  }
}



