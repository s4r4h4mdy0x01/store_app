import 'package:stroe_app/helper/json_helper.dart';
import 'package:stroe_app/models/product_model.dart';

class UpdateProductServices {
  Future<ProductsModel> updateProduct(
      {required String title,
      required  dynamic price,
      required String descr,
      required String image,
      required String category,
      required  dynamic id,
      
      }) async {
    Map<String, dynamic> data = await Api().put(
      uri: 'https://fakestoreapi.com/products/$id',
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
