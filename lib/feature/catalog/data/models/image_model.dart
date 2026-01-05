import 'package:test_app/feature/catalog/domain/entities/image_entity.dart';

class ImageModel extends Image {
  ImageModel({required super.imageUrl, required super.isPrimary});

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        imageUrl: json["image_url"],
        isPrimary: json["is_primary"],
    );

    Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "is_primary": isPrimary,
    };
}
