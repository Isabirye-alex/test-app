import 'package:flutter/material.dart';

class FeaturedProductsCard extends StatelessWidget {
  const FeaturedProductsCard({super.key, required this.isDark});
  final bool isDark;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/Hp laptop.jpg',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(child: Text('Blender')),
              Center(
                child: Row(
                  children: [
                    Text(
                      '\$145',
                      style: TextStyle().copyWith(
                        fontSize: 16,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: isDark ? Colors.red : Colors.black,
                        decorationThickness: 2.0,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('\$120', style: TextStyle().copyWith(fontSize: 16)),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
