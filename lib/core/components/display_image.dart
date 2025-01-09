import 'package:e_coomer/core/components/grid_images.dart';
import 'package:flutter/material.dart';

class DisplayImage extends StatelessWidget {
  final List<String?> images;
  const DisplayImage({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ImageGrid(
        images: images,
      ),
    );
  }
}
