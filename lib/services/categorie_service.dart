import 'dart:convert';

import 'package:http/http.dart' as http;

class CategorieServices {
  Future<List<dynamic>> getCategorie() async {
    http.Response response = await http
        .get(Uri.parse('https://fakestoreapi.com/products/categories'));
    List<dynamic> dataCategories = jsonDecode(response.body);
    return dataCategories;
  }
}
