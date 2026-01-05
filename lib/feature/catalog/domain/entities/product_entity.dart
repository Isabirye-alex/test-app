import 'package:test_app/feature/catalog/data/models/image_model.dart';

class ProductEntity {
  int? productId;
  String? productName;
  String? productDescription;
  String? slug;
  double? productStock;
  String? stockStatus;
  double? productStockPrice;
  double? productSellingPrice;
  double? productDiscountedPrice;
  double? discountPercentage;
  List<ImageModel>? images;

  ProductEntity({
    required this.productId,
    required this.productName,
    required this.productDescription,
    required this.slug,
    required this.productStock,
    required this.stockStatus,
    required this.productStockPrice,
    required this.productSellingPrice,
    required this.productDiscountedPrice,
    required this.discountPercentage,
    required this.images,
  });
}
