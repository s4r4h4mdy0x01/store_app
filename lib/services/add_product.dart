import 'package:stroe_app/helper/json_helper.dart';
import 'package:stroe_app/models/product_model.dart';

class AddProduct {
  Future<ProductsModel> addProduct(
      {required String title,
      required  dynamic price,
      required String descr,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await Api().post(
      uri: 'https://fakestoreapi.com/products',
      body: {
        "title": title,
        "price": price,
        "description": descr,
        "image": image,
        "category": category,
      },
    );
    return ProductsModel.fromJson(data);
  }
}
