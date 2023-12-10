import 'package:flutter/material.dart';

import '../../../shared/componants/custom_button.dart';
import '../../../shared/constants/constants.dart';

class HomePageHeaderSection extends StatelessWidget {
  const HomePageHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          homeScreenImage,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Positioned(
          bottom: MediaQuery.sizeOf(context).height * 0.039408867,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const Text(
                  'Fashion\nsale',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontFamily: metropolisFontFamiely,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.022167488,
                ),
                CustomButton(
                  child: "Check",
                  width: MediaQuery.sizeOf(context).width * 0.426666667,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
