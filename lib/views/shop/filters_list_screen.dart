// import 'package:ecommerce_it_school/models/brand_list_model.dart';
// import 'package:ecommerce_it_school/shared/componants/bottom_app_bar_section.dart';
// import 'package:ecommerce_it_school/views/shop/shop_componants/brand_list_item.dart';
// import 'package:flutter/material.dart';

// import 'shop_componants/filters_list_screen_app_bar.dart';
// import 'shop_componants/filters_list_search_bar_section.dart';

// class FiltersListScreen extends StatelessWidget {
//   const FiltersListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: filtersListScreenAppBar(),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Column(
//                 children: [
//                   const FiltersListSearchBarSection(),
//                   //brands list Section
//                   Column(
//                     children: [
//                       SizedBox(
//                         height: MediaQuery.sizeOf(context).height * 0.02955665,
//                       ),
//                       //brand list view builder
//                       ListView.builder(
//                         shrinkWrap: true,
//                         physics: const NeverScrollableScrollPhysics(),
//                         itemCount: BrandListModel.brandsList.length,
//                         itemBuilder: (context, index) {
//                           return BrandListItem(
//                               brandListModel: BrandListModel.brandsList[index]);
//                         },
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             const BottomAppBarSection()
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../models/brand_list_model.dart';
import '../../shared/componants/bottom_app_bar_section.dart';
import 'shop_componants/brand_list_item.dart';
import 'shop_componants/brand_list_list_view_builder.dart';
import 'shop_componants/filters_list_screen_app_bar.dart';
import 'shop_componants/filters_list_search_bar_section.dart';

class FiltersListScreen extends StatelessWidget {
  const FiltersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: filtersListScreenAppBar(),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                FiltersListSearchBarSection(),
              ],
            ),
          ),
          BrandListListViewBuilderSection(),
          BottomAppBarSection(),
        ],
      ),
    );
  }
}
