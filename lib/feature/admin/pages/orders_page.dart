import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Orders',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        SizedBox(height: 16),

        Card(
          child: DataTable(
            columns: const [
              DataColumn(label: Text('Order ID')),
              DataColumn(label: Text('Customer')),
              DataColumn(label: Text('Total')),
              DataColumn(label: Text('Status')),
            ],
            rows: List.generate(
              6,
              (index) => DataRow(
                cells: [
                  DataCell(Text('#ORD00$index')),
                  DataCell(Text('Customer $index')),
                  DataCell(Text('\$${(index + 1) * 120}')),
                  DataCell(
                    Chip(
                      label: Text('Pending'),
                      backgroundColor: Colors.orange.withOpacity(0.1),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
