import 'package:flutter/material.dart';

import '../../../models/bottom_sheet_filter_model.dart';
import '../../catalog2_screen/catalog2_screen_componants/catalog2_filters_section.dart';
import '../../catalog2_screen/catalog2_screen_componants/bottom_sheet_filter_item.dart';

class FiltersAndBottomSheetSection extends StatefulWidget {
  const FiltersAndBottomSheetSection({
    super.key,
  });

  @override
  State<FiltersAndBottomSheetSection> createState() =>
      _FiltersAndBottomSheetSectionState();
}

class _FiltersAndBottomSheetSectionState
    extends State<FiltersAndBottomSheetSection> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.433497537,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 14,
                      ),
                      Container(
                        width: 60,
                        height: 6,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF9B9B9B),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Sort by',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 18,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: BottomSheetFilterModel.filters.length,
                    itemBuilder: (context, index) {
                      return BottomSheetFilterItem(
                        bottomSheetFilterModel:
                            BottomSheetFilterModel.filters[index],
                        onTap: () {
                          setState(() {
                            BottomSheetFilterModel.filters[index].isSelected =
                                true;
                            if (BottomSheetFilterModel
                                    .filters[index].isSelected ==
                                true) {
                              BottomSheetFilterModel.filters[index].tileColor =
                                  Colors.orange;
                            } else {
                              BottomSheetFilterModel.filters[index].tileColor =
                                  Colors.white;
                            }
                          });
                        },
                      );
                    },
                  )
                ],
              ),
            );
          },
        );
      },
      child: const Catalog2FiltersSection(),
    );
  }
}
