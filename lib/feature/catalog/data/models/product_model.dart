import 'package:test_app/feature/catalog/data/models/image_model.dart';
import 'package:test_app/feature/catalog/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    super.productId,
    super.productName,
    super.productDescription,
    super.slug,
    super.productStock,
    super.stockStatus,
    super.productStockPrice,
    super.productSellingPrice,
    super.productDiscountedPrice,
    super.discountPercentage,
    super.images,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    productId: json["product_id"] as int,
    productName: json["product_name"] as String,
    productDescription: json["product_description"] as String,
    slug: json["slug"] as String,
    productStock: (json["product_stock"] as num?)?.toDouble() ?? 0.0,
    stockStatus: json["stock_status"] as String,
    productStockPrice: (json["product_stock_price"] as num?)?.toDouble() ?? 0.0,
    productSellingPrice: (json["product_selling_price"] as num?)?.toDouble() ?? 0.0,
    productDiscountedPrice: (json["product_discounted_price"] as num?)
        ?.toDouble() ?? 0.0,
    discountPercentage: (json["discount_percentage"] as num?)?.toDouble() ?? 0.0,
    images: (json["images"] as List<dynamic>)
        .map((x) => ImageModel.fromJson(x as Map<String, dynamic>))
        .toList() ,
  );
}
