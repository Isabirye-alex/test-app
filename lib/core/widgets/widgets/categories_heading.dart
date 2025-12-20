import 'package:flutter/material.dart';
import 'package:test_app/config/theme/colors.dart';

class CategoriesHeading extends StatelessWidget {
  const CategoriesHeading({super.key, required this.isDark, required this.text});

  final bool isDark;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, right: 12),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: TextStyle().copyWith(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: isDark ? TColors.colorWhite : TColors.colorBlack,
              ),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'View All',
                  style: TextStyle().copyWith(fontSize: 14),
                ),
              ),
              Icon(
                Icons.arrow_right_alt_sharp,
                color: isDark ? TColors.colorWhite : TColors.colorBlack,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
