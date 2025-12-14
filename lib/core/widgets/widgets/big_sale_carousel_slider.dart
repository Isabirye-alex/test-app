import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BigSaleCarouselSlider extends StatefulWidget {
  const BigSaleCarouselSlider({super.key, required this.isDark});
  final bool isDark;
  @override
  State<BigSaleCarouselSlider> createState() => _BigSaleCarouselSliderState();
}

class _BigSaleCarouselSliderState extends State<BigSaleCarouselSlider> {
  bool get isDark => Theme.of(context).brightness == Brightness.dark;
  final controller = CarouselSliderController();
  int activeIndex = 0;
  final urlImages = [
    'assets/images/9.jpg',
    'assets/images/Blender.jpg',
    'assets/images/curved.jpg',
    'assets/images/Flash Disks.jpg',
    'assets/images/Hp laptop.jpg',
    'assets/images/IMG-20250323-WA0075.jpg',
    'assets/images/IMG-20250323-WA0137.jpg',
    'assets/images/IMG-20250323-WA0165.jpg',
    'assets/images/IMG-20250323-WA0185.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = urlImages[index];

            return buildImage(urlImage, index);
          },
          carouselController: controller,
          options: CarouselOptions(
            enableInfiniteScroll: false,
            enlargeFactor: 0.4,
            viewportFraction: 1,
            initialPage: 0,
            height: 160,
            enlargeCenterPage: true,
            pageSnapping: false,
            autoPlay: true,
            autoPlayCurve: Curves.decelerate,
            autoPlayAnimationDuration: Duration(seconds: 2),
            animateToClosest: true,
            autoPlayInterval: Duration(seconds: 10),
            enlargeStrategy: CenterPageEnlargeStrategy.zoom,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            onPageChanged: (index, reason) => {
              setState(() {
                activeIndex = index;
              }),
            },
          ),
        ),
        SizedBox(height: 20),
        buildIndicator(),
        SizedBox(height: 10),
        buildButtons(),
      ],
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: isDark ? Colors.white : Colors.black,
      boxShadow: [
        BoxShadow(
          blurRadius: 0.8,
          offset: Offset(0.4, 0.8),
          spreadRadius: 6.0,
          color: isDark ? Colors.green : Colors.blue,
        ),
      ],
    ),
    width: double.infinity,
    child: ClipRRect(
      // borderRadius: BorderRadius.circular(24),
      child: Image.asset(urlImage, fit: BoxFit.cover),
    ),
  );

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: urlImages.length,
    onDotClicked: (index) {
      controller.animateToPage(
        index,
        duration: const Duration(microseconds: 2000),
        curve: Curves.easeInOut,
      );
    },
    effect: JumpingDotEffect(
      dotHeight: 5,
      dotWidth: 14,
      activeDotColor: Colors.blue,
      dotColor: Colors.purple,
    ),
  );
  Widget buildButtons({bool stretch = false}) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(onPressed: previous, child: Icon(Icons.arrow_back)),
      stretch ? Spacer() : SizedBox(width: 12),
      ElevatedButton(onPressed: next, child: Icon(Icons.arrow_forward)),
    ],
  );

  void previous() {
    controller.previousPage(duration: Duration(milliseconds: 800));
  }

  void next() {
    controller.nextPage(duration: Duration(milliseconds: 800));
  }
}
