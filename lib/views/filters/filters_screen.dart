import 'package:ecommerce_it_school/views/filters/filters%20componants/filters_screen_app_bar.dart';
import 'package:ecommerce_it_school/views/filters/filters%20componants/price_filter_section.dart';
import 'package:flutter/material.dart';

import '../../shared/componants/bottom_app_bar_section.dart';
import 'filters componants/brand_filter_section.dart';
import 'filters componants/category_filter_section.dart';
import 'filters componants/colors_filter_section.dart';
import 'filters componants/size_filter_section.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: filtersScreenAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Price Filter Scetion
            StatefulBuilder(
              builder: (context, setState) {
                return const PriceFilterSction();
              },
            ),
            //colors Filter Sction
            const ColorsFilterSection(),
            //size filter section
            const SizeFilterSection(),
            //category filter section
            const CategoryFilterSection(),
            //Brand Filter Section
            const BrandFilterSection(),
            //bootom App bar Section
             const BottomAppBarSection()
          ],
        ),
      ),
    );
  }
}
