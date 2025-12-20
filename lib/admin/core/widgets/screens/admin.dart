import 'package:flutter/material.dart';
import 'package:test_app/config/theme/colors.dart';
import 'package:test_app/core/widgets/widgets/home_search_bar_widget.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        backgroundColor: isDark ? TColors.colorBlack : TColors.colorWhite,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Top Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Admin Title
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Admin Dashboard',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: isDark ? TColors.colorWhite : TColors.colorBlack,
                      ),
                    ),
                    Text(
                      'Manage products, categories & orders',
                      style: TextStyle(
                        fontSize: 13,
                        color: TColors.disabledColorGray,
                      ),
                    ),
                  ],
                ),

                /// Actions
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.notifications_none,
                        color: isDark ? TColors.colorWhite : TColors.colorBlack,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10),

                    CircleAvatar(
                      radius: 18,
                      backgroundColor: TColors.primaryColorBlue,
                      child: Icon(
                        Icons.person_outline,
                        color: TColors.colorWhite,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 12),

            /// Search
            SearchBarAndMenuIcon(isDark: isDark),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Add Product'),
                ),
              ),
            ),
            Chip(
              label: Text('ADMIN'),
              backgroundColor: TColors.primaryColorBlue.withAlpha(100),
            ),
          ],
        ),
      ),
    );
  }
}
