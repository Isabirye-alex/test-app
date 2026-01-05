import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_app/core/constants/api_constant.dart';
import 'package:test_app/feature/catalog/data/models/product_model.dart';
import 'package:test_app/feature/catalog/domain/repositories/product_repository.dart';

class ProductRepositoryImp extends ProductRepository {
  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      final response = await http
          .get(Uri.parse('${ApiConstant.apiUrl}/products/all'))
          .timeout(Duration(seconds: 10));
      debugPrint('${response.statusCode}');
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        return data.map((p) => ProductModel.fromJson(p)).toList();
      } else {
        throw Exception('Failed to load Products:${response.statusCode}');
      }
    } catch (e, stackTrace) {
      debugPrint('Error loading products: $e');
      debugPrint(' Stack trace:$stackTrace');
      rethrow;
    }
  }
}
