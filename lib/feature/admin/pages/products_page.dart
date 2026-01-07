import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          ElevatedButton.icon(
            onPressed: () {
              // open add product dialog/page
            },
            icon: Icon(Icons.add),
            label: Text('Add Product'),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Center(child: Text('Products list here')),
    );
  }
}
