import 'package:flutter/material.dart';

import '../../../shared/constants/constants.dart';

class Catalog1ScreenFiltersSection extends StatelessWidget {
  const Catalog1ScreenFiltersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.022167488,
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.filter_list),
              Text(
                'Filters',
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 11,
                  fontFamily: metropolisFontFamiely,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.swap_vert),
              Text(
                'Price: lowest to high',
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 11,
                  fontFamily: metropolisFontFamiely,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Icon(Icons.view_module)
        ],
      )
    ]);
  }
}
