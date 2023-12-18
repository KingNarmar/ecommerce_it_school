import 'package:flutter/material.dart';

import '../../../models/brand_list_model.dart';
import 'brand_list_item.dart';

class BrandListListViewBuilderSection extends StatelessWidget {
  const BrandListListViewBuilderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: BrandListModel.brandsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BrandListItem(
              brandListModel: BrandListModel.brandsList[index],
            ),
          );
        },
      ),
    );
  }
}
