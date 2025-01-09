import 'package:e_coomer/core/components/custom_image_handler.dart';
import 'package:flutter/material.dart';

// class ImageGrid extends StatelessWidget {
//   final List<String> images;

//   ImageGrid({required this.images});

//   @override
//   Widget build(BuildContext context) {
//     List<String> displayImages = images.take(4).toList();
//     int remainingCount = (images.length - displayImages.length) + 1;

//     return ListView.builder(
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       scrollDirection: Axis.horizontal,

//       itemCount: displayImages.length,
//       itemBuilder: (context, index) {
//         return Stack(
//           fit: StackFit.expand,
//           children: [
//             CustomImageHandler(
//               displayImages[index],
//               fit: BoxFit.cover,
//                width: 70,
//               height: 70,
//             ),
//             index != 3
//                 ? SizedBox()
//                 : Container(
//                     decoration: BoxDecoration(
//                       image:
//                           DecorationImage(image: AssetImage(AppImages.bag)),
//                       color: index != 3 ? null : Colors.grey.withOpacity(0.4),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Center(
//                       child: Text(
//                         "${remainingCount} +",
//                         style: TextStyle(
//                           fontSize: 20,
//
//                           color: AppColors.whiteColor,
//                         ),
//                       ),
//                     ),
//                   ),
//           ],
//         );
//       },
//     );
//   }
// }
class ImageGrid extends StatelessWidget {
  final List<String?> images;

  const ImageGrid({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    List<String?> displayImages = images.take(5).toList();
    int remainingCount = images.length - displayImages.length;

    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: displayImages.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CustomImageHandler(
                  displayImages[index]!,
                  fit: BoxFit.fitHeight,
                  width: 80,
                  height: 80,
                ),
              ),
              index != 4
                  ? const SizedBox.shrink()
                  : Container(
                      width: 80,
                      height: 70,
                      decoration: BoxDecoration(
                        color: const Color(0xff1D1710).withOpacity(0.9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "$remainingCount +",
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
