import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/theme/colors.dart';

class SearchBarAndMenuIcon extends StatelessWidget {
  const SearchBarAndMenuIcon({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Iconsax.search_normal_14,
                color: isDark ? TColors.colorWhite : TColors.colorBlack,
              ),
              suffixIcon: Icon(Icons.mic_none_outlined),
              filled: true,
              fillColor: isDark ? Colors.white10 : Colors.grey.shade200,
              hintText: 'Search',
              hintStyle: TextStyle().copyWith(
                color: isDark ? TColors.colorWhite : TColors.colorBlack,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(34),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(34),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(34),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
    
        SizedBox(width: 10),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: isDark ? Colors.white : Colors.black,
          ),
          child: Center(
            child: Icon(
              Icons.checklist_sharp,
              color: isDark ? Colors.black : Colors.white,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
