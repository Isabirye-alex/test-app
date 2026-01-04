import 'package:flutter/material.dart';
import 'package:test_app/core/theme/colors.dart';
import 'package:test_app/feature/home/presentation/viewmodels/home_body_widget.dart';
import 'package:test_app/feature/home/presentation/viewmodels/home_search_bar_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Hello,',
                      style: TextStyle().copyWith(
                        fontSize: 14,
                        color: isDark ? TColors.colorWhite : TColors.disabledColorGray,
                      ),
                    ),
                    Text(
                      'Welcome',
                      style: TextStyle().copyWith(
                        fontSize: 24,
                        color: isDark ? TColors.colorWhite : TColors.colorBlack,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Icon(Icons.shopping_cart_checkout_sharp),
                    Text('Cart'),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    Text('Account'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            SearchBarAndMenuIcon(isDark: isDark),
          ],
        ),
      ),
      body: HomeBodyWidget(),
    );
  }
}
