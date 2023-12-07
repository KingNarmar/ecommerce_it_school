import 'package:flutter/material.dart';

import '../../../shared/componants/custom_button.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomButton(child: "TAKE A PHOTO"),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.019704433,
        ),
        const CustomButton(
          child: "UPLOAD AN IMAGE",
          color: Colors.transparent,
          side: BorderSide(color: Colors.white),
        ),
      ],
    );
  }
}
