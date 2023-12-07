import 'package:ecommerce_it_school/shared/componants/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'login_componants/login_parameter_section.dart';
import 'login_componants/login_social_media_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              text: "Login",
            ),
            LoginParameterSection(),
            LoginSocialMediaSection(),
          ],
        )),
      ),
    );
  }
}
