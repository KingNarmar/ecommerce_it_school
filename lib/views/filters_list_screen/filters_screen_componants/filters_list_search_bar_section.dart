import 'package:ecommerce_it_school/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class FiltersListSearchBarSection extends StatelessWidget {
  const FiltersListSearchBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SearchBar(
      backgroundColor: MaterialStatePropertyAll(Colors.white),
      elevation: MaterialStatePropertyAll(0),
      hintText: "Search",
      hintStyle: MaterialStatePropertyAll(
        TextStyle(
          color: Color(0xFF9B9B9B),
          fontSize: 16,
          fontFamily: metropolisFontFamiely,
          fontWeight: FontWeight.w600,
        ),
      ),
      leading: Icon(Icons.search, color: Color(0xFF9B9B9B)),
    );
  }
}
