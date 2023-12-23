
import 'package:ecommerce_it_school/shared/constants/constants.dart';
import 'package:ecommerce_it_school/shared/methods/methods.dart';
import 'package:flutter/material.dart';

import '../../../shared/api/controllers.dart';
import '../../../shared/api/dio_helper.dart';
import '../../../shared/componants/custom_button.dart';
import '../../../shared/componants/custom_text_field.dart';
import '../../forgot_password/forgot_password_screen.dart';

class LoginParameterSection extends StatelessWidget {
  const LoginParameterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.089901478,
        ),
          CustomTextField(
          labelText: "Email",
          controller: LoginControllers.emailController,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.009852217,
        ),
          CustomTextField(
          labelText: "Password",
          controller: LoginControllers.passwordController,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.019704433,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ForgotPasswordScreen(),
                ));
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Forgot your password?",
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
          height: MediaQuery.sizeOf(context).height * 0.039408867,
        ),
        CustomButton(
          child: "LOGIN",
          height: mediaHeight(context, 0.0591133),
          onTap: () {
            DioHelper.login(context);
          },
        ),
      ],
    );
  }
}
