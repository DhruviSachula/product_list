import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ApiService {
  static const String baseUrl = 'https://dummyjson.com/products';

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<Product> productList = (data['products'] as List)
          .map((item) => Product.fromJson(item))
          .toList();
      return productList;
    } else {
      throw Exception('Failed to load products');
    }
  }
}
