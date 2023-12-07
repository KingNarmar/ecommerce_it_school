import 'package:ecommerce_it_school/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Search for an outfit by taking a photo or uploading an image',
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontFamily: metropolisFontFamiely,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.034482759,
        ),
      ],
    );
  }
}
