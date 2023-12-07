import 'package:flutter/material.dart';

import '../../../shared/componants/custom_button.dart';
import '../../../shared/componants/custom_text_field.dart';

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
        const CustomTextField(
          labelText: "Email",
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.009852217,
        ),
        const CustomTextField(
          labelText: "Password",
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.019704433,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ForgotPasswordScreen(),
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
                  fontFamily: 'Metropolis',
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
        const CustomButton(
          child: "LOGIN",
        ),
      ],
    );
  }
}
