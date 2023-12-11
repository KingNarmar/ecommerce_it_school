import 'package:ecommerce_it_school/shared/constants/constants.dart';

class SupCategoryProductModel {
  final String image;
  final String name;
  final String supplier;
  final int numOfStars;
  final int rating;
  final int price;

  SupCategoryProductModel({
    required this.image,
    required this.name,
    required this.supplier,
    required this.numOfStars,
    required this.rating,
    required this.price,
  });

  static final List<SupCategoryProductModel> supCategoryProductsList = [
    SupCategoryProductModel(
        image: supCategoryProductImage1,
        name: "Pullover",
        supplier: "Mango",
        numOfStars: 4,
        rating: 3,
        price: 51),
    SupCategoryProductModel(
        image: supCategoryProductImage2,
        name: "Blouse",
        supplier: "Dorothy Perkins",
        numOfStars: 5,
        rating: 0,
        price: 34),
    SupCategoryProductModel(
        image: supCategoryProductImage3,
        name: "T-shirt",
        supplier: "LOST Ink",
        numOfStars: 5,
        rating: 10,
        price: 12),
    SupCategoryProductModel(
        image: supCategoryProductImage4,
        name: "Shirt",
        supplier: "Topshop",
        numOfStars: 4,
        rating: 3,
        price: 51),
    SupCategoryProductModel(
        image: supCategoryProductImage4,
        name: "Shirt",
        supplier: "Topshop",
        numOfStars: 4,
        rating: 3,
        price: 51),
    SupCategoryProductModel(
        image: supCategoryProductImage4,
        name: "Shirt",
        supplier: "Topshop",
        numOfStars: 4,
        rating: 3,
        price: 51),
  ];
}
