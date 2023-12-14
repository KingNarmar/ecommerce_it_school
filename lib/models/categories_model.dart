import '../shared/constants/constants.dart';

class CategoriesModel {
  final String image;
  final String name;

  CategoriesModel({required this.image, required this.name});

  static final List<CategoriesModel> categoryList = [
    CategoriesModel(image: newCategoryImage, name: "New"),
    CategoriesModel(image: clothesCategoryImage, name: "Clothes"),
    CategoriesModel(image: shoesCategoryImage, name: "Shoes"),
    CategoriesModel(image: accesoriesCategoryImage, name: "Accesoris")
  ];
}
