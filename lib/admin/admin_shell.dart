import 'package:flutter/material.dart';
import 'package:test_app/config/theme/colors.dart';

class AdminShell extends StatefulWidget {
  const AdminShell({super.key});

  @override
  State<AdminShell> createState() => _AdminShellState();
}

class _AdminShellState extends State<AdminShell> {
  int selectedIndex = 0;

  final pages = const [
    Center(child: Text('Dashboard')),
    Center(child: Text('Products')),
    Center(child: Text('Categories')),
    Center(child: Text('Orders')),
    Center(child: Text('Users')),
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
            backgroundColor: isDark
                ? TColors.colorBlack
                : TColors.colorWhite,
            selectedIconTheme: IconThemeData(
              color: TColors.primaryColorBlue,
            ),
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

          /// Main Content
          Expanded(
            child: pages[selectedIndex],
          ),
        ],
      ),
    );
  }
}
