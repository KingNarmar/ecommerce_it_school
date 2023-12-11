import 'package:ecommerce_it_school/views/shop/shop_componants/category_list_view_item.dart';
import 'package:ecommerce_it_school/views/shop/sub_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../models/category_model.dart';

class CategoryListViewBuilderSection extends StatelessWidget {
  const CategoryListViewBuilderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: CategoryModel.categoryList.length,
      itemBuilder: (context, index) {
        return CategoryListViewItem(
          categoryModel: CategoryModel.categoryList[index],
          onTap: () {
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: const SubCategoryScreen(),
              withNavBar: true,
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
        );
      },
    );
  }
}
