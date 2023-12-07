import 'package:flutter/material.dart';
import '../../shared/componants/custom_app_bar.dart';
import 'sing_up_componants/sign_up_parameter_section.dart';
import 'sing_up_componants/sign_up_socila_media_section.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(text: "Sign Up"),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.089901478,
                ),
                const SignUpParameterSection(),
                const SignUpSocialMediaSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
