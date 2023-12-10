import '../shared/constants/constants.dart';

class ProductModel {
  final String image;
  final int numOfStars;
  final int numOfRating;
  final String category;
  final String name;
  final int oldPrice;
  final int newPrice;

  ProductModel(
      {required this.image,
      required this.numOfStars,
      required this.numOfRating,
      required this.category,
      required this.name,
      required this.oldPrice,
      required this.newPrice});

  static final List<ProductModel> productList = [
    ProductModel(
        image: newListViewImage1,
        numOfStars: 5,
        numOfRating: 4,
        category: "Dorthy Perkins",
        name: "Evning Dress",
        oldPrice: 15,
        newPrice: 12),
    ProductModel(
        image: newListViewImage2,
        numOfStars: 4,
        numOfRating: 4,
        category: "Sitlly",
        name: "Sport Dress",
        oldPrice: 22,
        newPrice: 19),
    ProductModel(
        image: newListViewImage1,
        numOfStars: 5,
        numOfRating: 4,
        category: "Dorthy Perkins",
        name: "Evning Dress",
        oldPrice: 15,
        newPrice: 12),
    ProductModel(
        image: newListViewImage2,
        numOfStars: 4,
        numOfRating: 4,
        category: "Sitlly",
        name: "Sport Dress",
        oldPrice: 22,
        newPrice: 19),
  ];
}
