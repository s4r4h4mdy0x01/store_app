import 'dart:convert';

import 'package:http/http.dart';
import 'package:stroe_app/helper/json_helper.dart';
import 'package:stroe_app/models/product_model.dart';

class GetAllProduct {
  Future<List<ProductsModel>> getProduct() async {
    String baseUrl = 'https://fakestoreapi';
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductsModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductsModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
//https://fakestoreapi.com/products