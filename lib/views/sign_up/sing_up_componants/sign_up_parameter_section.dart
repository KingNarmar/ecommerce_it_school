import 'package:ecommerce_it_school/shared/api/controllers.dart';
import 'package:ecommerce_it_school/shared/api/dio_helper.dart';
import 'package:ecommerce_it_school/shared/constants/constants.dart';
import 'package:ecommerce_it_school/shared/methods/methods.dart';
import 'package:ecommerce_it_school/views/login/login_screen.dart';
import 'package:flutter/material.dart';

import '../../../shared/componants/custom_button.dart';
import '../../../shared/componants/custom_text_field.dart';

class SignUpParameterSection extends StatelessWidget {
   const SignUpParameterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CustomTextField(labelText: "Name",controller: SignupControllers.nameController),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.009852217,
        ),
         CustomTextField(
          labelText: "Email",
          controller:SignupControllers.emailController,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.009852217,
        ),
         CustomTextField(
          labelText: "Password",
          controller: SignupControllers.passwordController,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.019704433,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Already have an account",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 14,
                  fontFamily: metropolisFontFamiely,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(Icons.arrow_right_alt_outlined)
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.034482759,
        ),
        CustomButton(child: "SIGN UP", height: mediaHeight(context, 0.0591133),onTap: () {
        DioHelper.createAccount(context);
        },),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.155172414,
        ),
      ],
    );
  }
}
