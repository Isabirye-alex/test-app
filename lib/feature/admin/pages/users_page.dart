import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Users',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        SizedBox(height: 16),

        Card(
          child: DataTable(
            columns: const [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Email')),
              DataColumn(label: Text('Role')),
              DataColumn(label: Text('Status')),
            ],
            rows: List.generate(
              6,
              (index) => DataRow(
                cells: [
                  DataCell(Text('User $index')),
                  DataCell(Text('user$index@email.com')),
                  DataCell(
                    Chip(label: Text(index == 0 ? 'Admin' : 'Customer')),
                  ),
                  DataCell(
                    Chip(
                      label: Text('Active'),
                      backgroundColor: Colors.green.withOpacity(0.1),
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
