import 'package:test_app/feature/catalog/domain/entities/category_entity.dart';

class CategoryModel extends CategoryEntity {
  CategoryModel({
    super.id,
    required super.categoryImageUrl,
    required super.categoryName,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['category_id'].toString(),
      categoryImageUrl: json['category_image_url'] as String,
      categoryName: json['category_name'] as String,
    );
  }

  
}
