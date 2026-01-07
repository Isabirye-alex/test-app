import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/admin/feature/product/presentation/viewmodels/datatable_viewmodel.dart';
import 'package:test_app/feature/catalog/shared/providers.dart';

class CategoriesPage extends ConsumerWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsync = ref.watch(categoriesProvider);

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: categoriesAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text(err.toString())),
        data: (categories) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // showDialog(
                      //   context: context,
                      //   builder: (_) => const Dialog(
                      //     child: SizedBox(width: 450, child: CategoryForm()),
                      //   ),
                      // );
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Add Category'),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              Container(
                margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                child: Card(
                  child: PaginatedDataTable(
                    header: const Text('Category List'),
                    rowsPerPage: 5,
                    columns: const [
                      DataColumn(label: Text('ID')),
                      DataColumn(label: Text('Name')),
                      DataColumn(label: Text('Image')),
                      DataColumn(label: Text('Actions')),
                    ],
                    source: CategoryDataSource(categories),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Container(
                margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                child: Card(
                  child: PaginatedDataTable(
                    header: const Text('Category List'),
                    rowsPerPage: 5,
                    columns: const [
                      DataColumn(label: Text('ID')),
                      DataColumn(label: Text('Name')),
                      DataColumn(label: Text('Image')),
                      DataColumn(label: Text('Actions')),
                    ],
                    source: CategoryDataSource(categories),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Container(
                margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                child: Card(
                  child: PaginatedDataTable(
                    header: const Text('Category List'),
                    rowsPerPage: 5,
                    columns: const [
                      DataColumn(label: Text('ID')),
                      DataColumn(label: Text('Name')),
                      DataColumn(label: Text('Image')),
                      DataColumn(label: Text('Actions')),
                    ],
                    source: CategoryDataSource(categories),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
