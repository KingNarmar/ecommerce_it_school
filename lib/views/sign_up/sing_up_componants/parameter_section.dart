import 'package:flutter/material.dart';

import '../../../shared/componants/custom_button.dart';
import '../../../shared/componants/custom_text_field.dart';

class ParameterSection extends StatelessWidget {
  const ParameterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(hintText: "Name"),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.009852217,
        ),
        const CustomTextField(
          hintText: "Email",
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.009852217,
        ),
        const CustomTextField(
          hintText: "Password",
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.019704433,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Already have an account",
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
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.034482759,
        ),
        const CustomButton(child: "SIGN UP"),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.155172414,
        ),
      ],
    );
  }
}
