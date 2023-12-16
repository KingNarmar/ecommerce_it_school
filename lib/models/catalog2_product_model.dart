import 'package:ecommerce_it_school/shared/constants/constants.dart';

class Catalog2ProductModel {
  final String image;
  final int numOfStars;
  final String rating;
  final String supplaier;
  final String name;
  final int price;

  Catalog2ProductModel({
    required this.image,
    required this.numOfStars,
    required this.rating,
    required this.supplaier,
    required this.name,
    required this.price,
  });
  static final List<Catalog2ProductModel> catalog2ProductsList = [
    Catalog2ProductModel(
      image: catalog2ProductImage1,
      numOfStars: 4,
      rating: "3",
      supplaier: "Mango",
      name: "T-Shirt SPANISH",
      price: 9,
    ),
    Catalog2ProductModel(
      image: catalog2ProductImage1,
      numOfStars: 5,
      rating: "9",
      supplaier: "Dorothy Perkins",
      name: "Blouse",
      price: 14,
    ),
    Catalog2ProductModel(
      image: catalog2ProductImage1,
      numOfStars: 0,
      rating: "0",
      supplaier: "Mango",
      name: "Shirt",
      price: 9,
    ),
    Catalog2ProductModel(
      image: catalog2ProductImage1,
      numOfStars: 5,
      rating: "5",
      supplaier: "Dorothy Perkins",
      name: "Light blouse ",
      price: 9,
    ),
  ];
}
