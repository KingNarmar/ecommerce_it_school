import 'package:ecommerce_it_school/shared/constants/constants.dart';

class Catalog1ProductModel {
  final String image;
  final String name;
  final String supplier;
  final int numOfStars;
  final int rating;
  final int price;

  Catalog1ProductModel({
    required this.image,
    required this.name,
    required this.supplier,
    required this.numOfStars,
    required this.rating,
    required this.price,
  });

  static final List<Catalog1ProductModel> supCategoryProductsList = [
    Catalog1ProductModel(
        image: supCategoryProductImage1,
        name: "Pullover",
        supplier: "Mango",
        numOfStars: 4,
        rating: 3,
        price: 51),
    Catalog1ProductModel(
        image: supCategoryProductImage2,
        name: "Blouse",
        supplier: "Dorothy Perkins",
        numOfStars: 5,
        rating: 0,
        price: 34),
    Catalog1ProductModel(
        image: supCategoryProductImage3,
        name: "T-shirt",
        supplier: "LOST Ink",
        numOfStars: 5,
        rating: 10,
        price: 12),
    Catalog1ProductModel(
        image: supCategoryProductImage4,
        name: "Shirt",
        supplier: "Topshop",
        numOfStars: 4,
        rating: 3,
        price: 51),
    Catalog1ProductModel(
        image: supCategoryProductImage4,
        name: "Shirt",
        supplier: "Topshop",
        numOfStars: 4,
        rating: 3,
        price: 51),
    Catalog1ProductModel(
        image: supCategoryProductImage4,
        name: "Shirt",
        supplier: "Topshop",
        numOfStars: 4,
        rating: 3,
        price: 51),
  ];
}
