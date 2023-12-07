import 'package:flutter/material.dart';

import 'sing_up_componants/custom_text_field_sing_up.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign Up",
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 34,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.089901478,
            ),
            const CustomTextFieldSingUp(hintText: "Name"),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.009852217,
            ),
            const CustomTextFieldSingUp(
              hintText: "Email",
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.009852217,
            ),
            const CustomTextFieldSingUp(
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
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.0591133,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                color: const Color(0xFFDB3022),
              ),
              child: const Center(
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.155172414,
            ),
            const Center(
              child: Text("Or sign up with social account"),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.014778325,
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.245333333,
                  height: MediaQuery.sizeOf(context).height * 0.078817734,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x0C000000),
                        blurRadius: 8,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: ,
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
