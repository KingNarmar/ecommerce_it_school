import 'package:flutter/material.dart';

import '../../shared/componants/bottom_app_bar_section.dart';
import 'filters_screen_componants/brand_list_list_view_builder.dart';
import 'filters_screen_componants/filters_list_screen_app_bar.dart';
import 'filters_screen_componants/filters_list_search_bar_section.dart';

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
