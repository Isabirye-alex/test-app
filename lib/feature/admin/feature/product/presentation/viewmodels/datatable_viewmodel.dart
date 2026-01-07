import 'package:flutter/material.dart';
import 'package:test_app/feature/catalog/data/models/category_model.dart';

class CategoryDataSource extends DataTableSource {
  final List<CategoryModel> categories;

  CategoryDataSource(this.categories);

  @override
  DataRow? getRow(int index) {
    if (index >= categories.length) return null;

    final c = categories[index];

    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text(c.id.toString())),
        DataCell(Text(c.categoryName)),
        DataCell(Image.network(c.categoryImageUrl, width: 40)),
        DataCell(
          Row(
            children: [
              IconButton(icon: const Icon(Icons.edit), onPressed: () {}),
              IconButton(icon: const Icon(Icons.delete), onPressed: () {}),
            ],
          ),
        ),
      ],
    );
  }

  @override
  int get rowCount => categories.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
