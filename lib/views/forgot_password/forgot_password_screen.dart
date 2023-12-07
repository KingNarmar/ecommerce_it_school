import 'package:ecommerce_it_school/shared/componants/custom_app_bar.dart';
import 'package:ecommerce_it_school/shared/componants/custom_button.dart';
import 'package:ecommerce_it_school/shared/componants/custom_text_field.dart';
import 'package:ecommerce_it_school/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(
                text: "Forgot Password",
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.107142857,
              ),
              const Text(
                "Please, enter your email address. You will receive a link to create a new password via email.",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 14,
                  fontFamily: metropolisFontFamiely,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.019704433,
              ),
              const CustomTextField(
                labelText: "Email",
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.086206897,
              ),
              const CustomButton(child: "SEND")
            ],
          ),
        ),
      ),
    );
  }
}
