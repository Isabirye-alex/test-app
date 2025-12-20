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
          maxCrossAxisExtent: 200,
          mainAxisExtent: 240,
        ),
        itemCount: 10,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (index, reason) {
          return ProductCard(isDark: isDark);
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: isDark
            ? Border()
            : Border.all(color: TColors.borderColorSoftGray, width: 1.0),
        color: isDark ? TColors.colorBlack : TColors.colorWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            spreadRadius: 0.7,
            blurRadius: 0.6,
            offset: Offset(0.4, 0.8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.asset(
                    'assets/images/Flash Disks.jpg',
                    height: 180,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                ),
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
              Positioned(
                left: 4,
                top: 4,
                child: Container(
                  decoration: BoxDecoration(),
                  child: Text(
                    '23% Discount',
                    style: TextStyle().copyWith(
                      color: TColors.warningColorGold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Hp 840G',
              style: TextStyle().copyWith(
                overflow: TextOverflow.ellipsis,
                fontSize: 12,
              ),
              maxLines: 2,
            ),
          ),
          SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'UGX.2570000',
                    style: TextStyle().copyWith(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 10,
                    ),
                    maxLines: 1,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    'UGX.2570000',
                    style: TextStyle().copyWith(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 10,
                      decoration: TextDecoration.lineThrough,
                    ),
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
