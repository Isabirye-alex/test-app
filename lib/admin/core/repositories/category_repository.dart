import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test_app/admin/models/category_model.dart';

class CategoryRepository {
  final String baseUrl;

  CategoryRepository({required this.baseUrl});

  Future<List<CategoryModel>> fetchCategories() async {
    final response = await http.get(Uri.parse('$baseUrl/get-categories'));

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List data = jsonDecode(response.body);

      return data.map((c) => CategoryModel.fromJson(c)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }

  Future<void> addCategory(CategoryModel category) async {
    final response = await http.post(
      Uri.parse('$baseUrl/add-category'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(category),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
    } else {
      throw Exception();
    }
  }
}
