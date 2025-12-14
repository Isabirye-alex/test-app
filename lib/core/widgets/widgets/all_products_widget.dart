import 'package:flutter/material.dart';
import 'package:test_app/config/theme/colors.dart';

class AllProductsWidget extends StatelessWidget {
  const AllProductsWidget({super.key, required this.isDark});
  final bool isDark;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
        ),
        itemCount: 20,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (index, reason) {
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isDark ? TColors.textWhite : TColors.textBlack,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 0.4,
                  blurRadius: 0.2,
                  offset: Offset(0.4, 0.0),
                ),
              ],
            ),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/Blender.jpg',
                  height: 180,
                  width: 180,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 5,
                  right: 0,
                  child: InkWell(
                    onTap: () {},
                    child: Icon(Icons.favorite_border, color: Colors.amber),
                  ),
                ),
                Positioned(
                  bottom: 2,
                  right: 2,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Icon(
                        Icons.add,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
