import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/catalog/data/repositories/category_repository.dart';

final categoryRepositoryProvider = Provider((ref) {
  return CategoryRepositoryImp();
});

final categoriesProvider = FutureProvider((ref) async {
  final repository = ref.watch(categoryRepositoryProvider);
  return repository.getCategories();
});
