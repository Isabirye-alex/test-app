import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/core/theme/colors.dart';
import 'package:test_app/feature/catalog/data/models/image_model.dart';
import 'package:test_app/feature/catalog/shared/product_provider.dart';

class AllProductsWidget extends ConsumerWidget {
  const AllProductsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productRepository);

    return SizedBox(
      child: productsAsync.when(
        data: (products) {
          return Padding(
            padding: EdgeInsets.zero,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: products.length,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.65,
                mainAxisExtent: 285,
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
                return Container(
                  decoration: BoxDecoration(
                    color: TColors.colorWhite,
                    // borderRadius: BorderRadius.circular(12),
                  ),
                  child: Card(
                    elevation: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
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
                            Positioned(
                              left: 10,
                              top: 10,
                              child: product.discountPercentage != 0
                                  ? Container(
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: TColors.backgroundColorOffWhite,
                                      ),
                                      child: Text(
                                        '${product.discountPercentage}% Discount',
                                        style: TextStyle().copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: TColors.saleTagColorRed,
                                          fontSize: 18,
                                        ),
                                      ),
                                    )
                                  : Text(
                                      '',
                                      style: TextStyle().copyWith(
                                        color: TColors.colorBlack,
                                      ),
                                    ),
                            ),
                            Positioned(
                              left: 4,
                              bottom: 0,
                              // Product name
                              child: Container(
                                decoration: BoxDecoration(
                                  color: TColors.backgroundColorOffWhite,
                                ),
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  product.productName!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle().copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            product.productDiscountedPrice != 0
                                ? Text(
                                    'UGX${product.productDiscountedPrice!.toInt()}',
                                    style: TextStyle().copyWith(
                                      color: TColors.infoColorRoyalBlue,
                                      fontSize: 16,
                                    ),
                                  )
                                : Text(
                                    'UGX${product.productSellingPrice!.toInt()}',
                                    style: TextStyle().copyWith(
                                      color: TColors.infoColorRoyalBlue,
                                      fontSize: 16,
                                    ),
                                  ),
                            SizedBox(width: 10),
                            product.productDiscountedPrice != 0
                                ? Text(
                                    '${product.productSellingPrice!.toInt()}',
                                    style: TextStyle().copyWith(
                                      color: TColors.errorColorRed,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.lineThrough,
                                      decorationStyle:
                                          TextDecorationStyle.solid,
                                      decorationColor: TColors.colorBlack,
                                      decorationThickness: 1,
                                    ),
                                  )
                                : Text(''),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
        error: (err, stack) => Center(child: Text('Error: $err')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
