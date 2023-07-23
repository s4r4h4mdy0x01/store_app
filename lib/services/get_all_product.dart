import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stroe_app/models/product_model.dart';

class GetAllProduct {
  Future<List<ProductsModel>> getProduct() async {
    String baseUrl = 'https://fakestoreapi';
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    List<dynamic> dataProduct = jsonDecode(response.body);
    List<ProductsModel> productList = [];
    for (int i = 0; i < dataProduct.length; i++) {
      productList.add(
        ProductsModel.fromJson(dataProduct[i]),
      );
    }
    return productList;
  }
}
