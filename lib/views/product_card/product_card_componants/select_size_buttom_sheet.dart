import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

import '../../../shared/componants/custom_button.dart';
import '../../../shared/constants/constants.dart';
import '../../../shared/methods/methods.dart';

Future<dynamic> selectSizeButtomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        color: Colors.white,
        height: mediaHeight(context, 0.45320197),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: mediaHeight(context, 0.012315271),
              ),
              Container(
                width: mediaWidth(context, 0.16),
                height: mediaHeight(context, 0.007389163),
                decoration: ShapeDecoration(
                  color: const Color(0xFF9B9B9B),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3)),
                ),
              ),
              SizedBox(
                height: mediaHeight(context, 0.019704433),
              ),
              const Text(
                'Select size',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 18,
                  fontFamily: metropolisFontFamiely,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: mediaHeight(context, 0.027093596),
              ),
              GroupButton(
                options: GroupButtonOptions(
                  borderRadius: BorderRadius.circular(8),
                  unselectedBorderColor: const Color(0xFF9B9B9B),
                  buttonHeight: mediaHeight(context, 0.049261084),
                  buttonWidth: mediaWidth(context, 0.266666667),
                  mainGroupAlignment: MainGroupAlignment.start,
                  selectedColor: const Color(0xFFDB3022),
                ),
                buttons: const ["XS", "S", "M", "L", "XL"],
              ),
              SizedBox(
                height: mediaHeight(context, 0.049261084),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Size info',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 16,
                        fontFamily: metropolisFontFamiely,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
              SizedBox(
                height: mediaHeight(context, 0.054187192),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomButton(
                    child: "ADD TO CART",
                    height: mediaHeight(context, 0.0591133)),
              )
            ],
          ),
        ),
      );
    },
  );
}
