import 'package:flutter/material.dart';
import 'package:test_app/core/widgets/widgets/all_products_widget.dart';
import 'package:test_app/core/widgets/widgets/big_sale_carousel_slider.dart';
import 'package:test_app/core/widgets/widgets/categories_heading.dart';
import 'package:test_app/core/widgets/widgets/circular_containers.dart';
import 'package:test_app/core/widgets/widgets/products_card.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CategoriesHeading(isDark: isDark, text: 'Categories'),
            SizedBox(height: 10),
            CircularContainers(),
            SizedBox(height: 10),
            BigSaleCarouselSlider(isDark: isDark),
            SizedBox(height: 10),
            CategoriesHeading(isDark: isDark, text: 'Featured'),
            SizedBox(height: 10),
            ProductsCard(isDark: isDark),
            SizedBox(height: 10),
            CategoriesHeading(isDark: isDark, text: 'Curated For You'),
            AllProductsWidget(isDark: isDark),
          ],
        ),
      ),
    );
  }
}
