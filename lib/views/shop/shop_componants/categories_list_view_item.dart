import 'package:ecommerce_it_school/models/categories_model.dart';
import 'package:flutter/material.dart';

class CategoriesListViewItem extends StatelessWidget {
  const CategoriesListViewItem({
    super.key,
    required this.categoryModel,
    this.onTap,
  });
  final void Function()? onTap;
  final CategoriesModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.019704433,
      ),
      InkWell(
        onTap: onTap,
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.123152709,
          width: double.infinity,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x14000000),
                blurRadius: 25,
                offset: Offset(0, 1),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(39),
                child: Text(
                  categoryModel.name,
                  style: const TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 18,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                width: 171,
                height: 100,
                child: Image.asset(
                  categoryModel.image,
                  fit: BoxFit.fitHeight,
                ),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
