import 'package:ecommerce_it_school/views/shop/shop_componants/sup_category_list_view_item.dart';
import 'package:ecommerce_it_school/views/shop/sup_category_products_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../models/sup_category_model.dart';

class SubCategoryListViewBuilder extends StatelessWidget {
  const SubCategoryListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: SupCategoryModel.subCategoryList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return SubCategoryListViewItem(
          supCategoryModel: SupCategoryModel.subCategoryList[index],
          onTap: () {
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: SupCategoryProductsScreen(
                  supCategoryModel: SupCategoryModel.subCategoryList[index]),
              withNavBar: true,
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
        );
      },
    );
  }
}
