import 'package:ecommerce_it_school/shared/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../shared/componants/custom_container_for_social_icons.dart';

class SignUpSocialMediaSection extends StatelessWidget {
  const SignUpSocialMediaSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            "Or sign up with social account",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 14,
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w500,
              height: 0.10,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.014778325,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainerForSocialIcons(
              iconPath: googleIcon,
            ),
            CustomContainerForSocialIcons(
              iconPath: facebookIcon,
            )
          ],
        ),
      ],
    );
  }
}
