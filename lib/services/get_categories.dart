import 'package:stroe_app/helper/json_helper.dart';
import 'package:stroe_app/models/product_model.dart';

class GetAllCategorie {
  Future<List<ProductsModel>> getAllCategorie(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductsModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductsModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
