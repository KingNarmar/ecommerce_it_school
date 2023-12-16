import 'package:flutter/material.dart';

import 'catalog1_screen_filters_section.dart';

class Catalog2FiltersSection extends StatelessWidget {
  const Catalog2FiltersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x1E000000),
            blurRadius: 12,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Catalog1ScreenFiltersSection(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.012315271,
            )
          ],
        ),
      ),
    );
  }
}
