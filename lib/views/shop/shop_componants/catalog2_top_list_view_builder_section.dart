import 'package:flutter/material.dart';

import 'catalog1_screen_top_list_builder_section.dart';

class Catalog2TopListViewBuilderSection extends StatelessWidget {
  const Catalog2TopListViewBuilderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.036945813,
      child: const Catalog1ScreenTopListBuilduerSection(),
    );
  }
}
