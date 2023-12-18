import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../models/categories_model.dart';
import '../../categories2_screen/categories2_screen.dart';
import 'categories_list_view_item.dart';

class CategoriesListViewBuilderSection extends StatelessWidget {
  const CategoriesListViewBuilderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: CategoriesModel.categoryList.length,
      itemBuilder: (context, index) {
        return CategoriesListViewItem(
          categoryModel: CategoriesModel.categoryList[index],
          onTap: () {
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: const Categories2Screen(),
              withNavBar: true,
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
        );
      },
    );
  }
}
