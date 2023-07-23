import 'dart:convert';

import 'package:stroe_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetAllCategorie {
  Future<List<ProductsModel>> getAllCategorie(
      {required String categoryName}) async {
    http.Response response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));
    List<dynamic> data = jsonDecode(response.body);
    List<ProductsModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductsModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
