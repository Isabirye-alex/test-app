// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CategoryModel {
  final int id;
  final String imageUrl;
  final String categoryName;
  final DateTime dateAdded;

  CategoryModel({
    required this.imageUrl,
    required this.categoryName,
    required this.dateAdded,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'imageUrl': imageUrl,
      'categoryName': categoryName,
      'dateAdded': dateAdded.millisecondsSinceEpoch,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] as int,
      imageUrl: map['imageUrl'] as String,
      categoryName: map['categoryName'] as String,
      dateAdded: DateTime.fromMillisecondsSinceEpoch(map['dateAdded'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  CategoryModel copyWith({
    int? id,
    String? imageUrl,
    String? categoryName,
    DateTime? dateAdded,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      categoryName: categoryName ?? this.categoryName,
      dateAdded: dateAdded ?? this.dateAdded,
    );
  }
}
