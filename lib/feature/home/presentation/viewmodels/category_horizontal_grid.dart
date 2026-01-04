import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/catalog/shared/providers.dart';

class CategoryHorizontalGrid extends ConsumerWidget {
  const CategoryHorizontalGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsync = ref.watch(categoriesProvider);
    return categoriesAsync.when(
      data: (categories) {
        return SizedBox(
          height: 80,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final item = categories[index];
              return Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Image.network(
                        item.categoryImageUrl,
                        fit: BoxFit.cover,
                        height: 60,
                        width: 60,
                      ),
                    ),
                    Text(item.categoryName),
                  ],
                ),
              );
            },
          ),
        );
      },
      error: (err, stack) => Text('Error: $err'),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
