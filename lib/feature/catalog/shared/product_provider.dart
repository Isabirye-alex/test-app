import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/catalog/data/repositories/product_repository.dart';

final productRepositoryImp = Provider((ref) {
  return ProductRepositoryImp();
});

final productRepository = FutureProvider((ref) {
  final productsProvider = ref.watch(productRepositoryImp);
  return productsProvider.getProducts();
});
