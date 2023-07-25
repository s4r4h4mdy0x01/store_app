import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stroe_app/helper/json_helper.dart';

class CategorieServices {
  Future<List<dynamic>> getCategorie() async {
    List<dynamic> dataCategories =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return dataCategories;
  } 
}
