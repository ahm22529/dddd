import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // Import for the smooth page indicator
import 'package:e_coomer/core/components/custom_image_handelar.dart'; // Ensure this is implemented correctly
import 'package:e_coomer/core/utiles/app_color.dart'; // Import your app colors

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key, required this.img});
  final List<String> img;

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _current = 0; // Current index for the active dot
  final CarouselSliderController _controller =
      CarouselSliderController(); // Correct controller

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 6),
            enlargeCenterPage: true,
            aspectRatio: 400.0 / 190,
            viewportFraction: 1.0, // Full width for each item
            enableInfiniteScroll: true,
            scrollPhysics: const BouncingScrollPhysics(),
            onPageChanged: (index, reason) {
              setState(() {
                _current = index; // Update the current active slide
              });
            },
          ),
          items: widget.img.map((assetPath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: double.infinity, // Make the container full width
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: CustomImageHandler(assetPath),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 20),
        AnimatedSmoothIndicator(
          activeIndex: _current, // Active dot index
          count: widget.img.length, // Total dots
          effect: ExpandingDotsEffect(
            activeDotColor: AppColors.primaryColor, // Color for the active dot
            dotColor: Colors.grey, // Color for inactive dots
            dotHeight: 4, // Height of the dots
            dotWidth: 10, // Width of the dots
            expansionFactor: 3, // Expansion factor for the active dot
          ),
          onDotClicked: (index) {
            _controller.animateToPage(index); // Move to the clicked dot's slide
          },
        ),
      ],
    );
  }
}
