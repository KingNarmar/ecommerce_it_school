import 'package:flutter/material.dart';

import '../../../shared/componants/custom_button.dart';

class BottomAppBarSection extends StatelessWidget {
  const BottomAppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      height: MediaQuery.sizeOf(context).height * 0.128078818,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        CustomButton(
          child: "Discard",
          width: MediaQuery.sizeOf(context).width * 0.426666667,
          color: Colors.transparent,
          textColor: Colors.black,
          side: const BorderSide(
            width: 1,
            color: Color(0xFF222222),
          ),
        ),
        CustomButton(
          child: "Apply",
          width: MediaQuery.sizeOf(context).width * 0.426666667,
        )
      ]),
    );
  }
}
