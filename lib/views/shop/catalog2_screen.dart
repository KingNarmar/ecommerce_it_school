import 'package:flutter/material.dart';

import 'shop_componants/catalog2_app_bar.dart';
import 'shop_componants/catalog2_products_grid_view_section.dart';
import 'shop_componants/catalog2_top_list_view_builder_section.dart';
import 'shop_componants/filters_and_bottom_sheet_section.dart';

class Catalog2Screen extends StatelessWidget {
  const Catalog2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: catalog2AppBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            //top List view
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Catalog2TopListViewBuilderSection(),
            ),
            //filters section & Bottom Sheet
            FiltersAndBottomSheetSection(),
            // catalog2 product grid view
            Catalog2ProductsGridViewSection()
          ],
        ),
      ),
    );
  }
}
