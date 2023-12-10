import '../shared/constants/constants.dart';

class CategoryModel {
  final String image;
  final String name;

  CategoryModel({required this.image, required this.name});

  static final List<CategoryModel> categoryList = [
    CategoryModel(image: newCategoryImage, name: "New"),
    CategoryModel(image: clothesCategoryImage, name: "Clothes"),
    CategoryModel(image: shoesCategoryImage, name: "Shoes"),
    CategoryModel(image: accesoriesCategoryImage, name: "Accesoris")
  ];
}
