import 'package:flutter/material.dart';

import '../../../shared/componants/custom_container_for_social_icons.dart';

class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text("Or sign up with social account"),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.014778325,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainerForSocialIcons(
              iconPath: "assets/images/googleIcon.png",
            ),
            CustomContainerForSocialIcons(
              iconPath: "assets/images/facebookIcon.png",
            )
          ],
        ),
      ],
    );
  }
}
