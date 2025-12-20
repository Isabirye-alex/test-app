import 'package:flutter/material.dart';
import 'package:test_app/admin/pages/categories_page.dart';
import 'package:test_app/admin/pages/dashboard_page.dart';
import 'package:test_app/admin/pages/orders_page.dart';
import 'package:test_app/admin/pages/products_page.dart';
import 'package:test_app/admin/pages/users_page.dart';
import 'package:test_app/config/theme/colors.dart';

class AdminShell extends StatefulWidget {
  const AdminShell({super.key});

  @override
  State<AdminShell> createState() => _AdminShellState();
}

class _AdminShellState extends State<AdminShell> {
  int selectedIndex = 0;

  final pages = const [
    DashboardPage(),
    ProductsPage(),
    CategoriesPage(),
    OrdersPage(),
    UsersPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Row(
        children: [
          /// Sidebar
          NavigationRail(
            selectedIndex: selectedIndex,
            onDestinationSelected: (index) {
              setState(() => selectedIndex = index);
            },
            labelType: NavigationRailLabelType.all,
            backgroundColor: isDark ? TColors.colorBlack : TColors.colorWhite,
            selectedIconTheme: IconThemeData(color: TColors.primaryColorBlue),
            selectedLabelTextStyle: TextStyle(
              color: TColors.primaryColorBlue,
              fontWeight: FontWeight.w600,
            ),
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.dashboard_outlined),
                selectedIcon: Icon(Icons.dashboard),
                label: Text('Dashboard'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.inventory_2_outlined),
                selectedIcon: Icon(Icons.inventory_2),
                label: Text('Products'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.category_outlined),
                selectedIcon: Icon(Icons.category),
                label: Text('Categories'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.receipt_long_outlined),
                selectedIcon: Icon(Icons.receipt_long),
                label: Text('Orders'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.people_outline),
                selectedIcon: Icon(Icons.people),
                label: Text('Users'),
              ),
            ],
          ),

          /// Main Area
          Expanded(
            child: Scaffold(
              appBar: _buildAdminAppBar(isDark),
              body: Padding(
                padding: const EdgeInsets.all(16),
                child: pages[selectedIndex],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildAdminAppBar(bool isDark) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: isDark ? TColors.colorBlack : TColors.colorWhite,
      elevation: 0,
      title: Column(
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
            style: TextStyle(fontSize: 13, color: TColors.disabledColorGray),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.notifications_none,
            color: isDark ? TColors.colorWhite : TColors.colorBlack,
          ),
          onPressed: () {},
        ),
        const SizedBox(width: 8),
        CircleAvatar(
          radius: 18,
          backgroundColor: TColors.primaryColorBlue,
          child: const Icon(Icons.person_outline, color: Colors.white),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
