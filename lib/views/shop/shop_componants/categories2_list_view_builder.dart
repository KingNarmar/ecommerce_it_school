import 'package:ecommerce_it_school/views/shop/shop_componants/categories2_list_view_item.dart';
import 'package:ecommerce_it_school/views/shop/catalog1_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../models/categories2_model.dart';

class Categories2ListViewBuilder extends StatelessWidget {
  const Categories2ListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Categories2Model.subCategoryList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Categories2ListViewItem(
          supCategoryModel: Categories2Model.subCategoryList[index],
          onTap: () {
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: Catalog1Screen(
                  supCategoryModel: Categories2Model.subCategoryList[index]),
              withNavBar: true,
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
        );
      },
    );
  }
}
