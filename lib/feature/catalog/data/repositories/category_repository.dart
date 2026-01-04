import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_app/core/constants/api_constant.dart';
import 'package:test_app/feature/catalog/data/models/category_model.dart';
import 'package:test_app/feature/catalog/domain/repositories/category_repository.dart';

class CategoryRepositoryImp implements CategoryRepository {
  @override
  Future<List<CategoryModel>> getCategories() async {
    try {
      debugPrint('Fetching Categories');
      debugPrint('Calling URL: ${ApiConstant.apiUrl}/categories/all');
      final response = await http.get(
        Uri.parse('${ApiConstant.apiUrl}/categories/all'),
      ).timeout(Duration(seconds: 10));
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        debugPrint('$data');
        
        return data.map((c) => CategoryModel.fromJson(c)).toList();
      } else {
        throw Exception(
          'Failed to load categories. Status code: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception('Error fetching categories: $e');
    }
  }
}
