import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/catalog/data/models/image_model.dart';
import 'package:test_app/feature/catalog/shared/product_provider.dart';

class AllProductsWidget extends ConsumerWidget {
  const AllProductsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productRepository);

    return productsAsync.when(
      data: (products) {
        return Padding(
          padding: EdgeInsets.all(8),
          child: GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 0.65,
            ),
            itemBuilder: (context, index) {
              final product = products[index];

              ImageModel? primaryImage;

              if (product.images!.isNotEmpty) {
                primaryImage = product.images!.firstWhere(
                  (img) => img.isPrimary,
                  orElse: () => product.images!.first,
                );
              }
              return Card(
                elevation: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image
                    AspectRatio(
                      aspectRatio: 3 / 4,
                      child: primaryImage != null
                          ? Image.network(
                              primaryImage.imageUrl,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            )
                          : const Center(
                              child: Icon(Icons.image_not_supported),
                            ),
                    ),

                    const SizedBox(height: 8),

                    // Product name
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        product.productName!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
      error: (err, stack) => Center(child: Text('Error: $err')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
