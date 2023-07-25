class ProductsModel {
  final int id;
  final String title;
  final  dynamic price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;
 
  ProductsModel(
      {required this.rating,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.id});
  factory ProductsModel.fromJson(jsonData) {
    return ProductsModel(
        title: jsonData['title'],
        price: jsonData['price'] ,
        description: jsonData['description'],
        category: jsonData['category'],
        image: jsonData['image'],
        id: jsonData['id'],
        rating: RatingModel.fromJson(jsonData['rating']));
  } //rating
}

class RatingModel {
  final num rate;
  final int count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}
