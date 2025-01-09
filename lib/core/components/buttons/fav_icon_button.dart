// import 'package:dartz/dartz.dart' as z;
// import 'package:e_coomer/components/toast_manager.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:e_coomer/core/localization/app_strings.dart';
// import 'package:e_coomer/core/models/errors/exceptions.dart';
// import 'package:e_coomer/core/services/network_service/api_service.dart';
// import 'package:e_coomer/core/services/network_service/endpoints.dart';
// import 'package:e_coomer/core/utils/app_colors.dart';
// import 'package:get/get.dart';
// import 'package:dio/dio.dart' as d;

// class FavoriteIconButton extends StatefulWidget {
//   final bool isFavorited;
//   final String courseId;
//   final double margin, size;
//   final Function(int) onFavoriteChanged;

//   const FavoriteIconButton({
//     super.key,
//     required this.isFavorited,
//     required this.courseId,
//     required this.onFavoriteChanged,
//     this.margin = 40,
//     required this.size,
//   });

//   @override
//   FavoriteIconButtonState createState() => FavoriteIconButtonState();
// }

// class FavoriteIconButtonState extends State<FavoriteIconButton>
//     with SingleTickerProviderStateMixin {
//   late bool _isFavorited;
//   late AnimationController _animationController;
//   bool _isLoading = false; // To track if the request is being processed

//   @override
//   void initState() {
//     super.initState();
//     _isFavorited = widget.isFavorited;

//     // Initialize the animation controller and the scale animation
//     _animationController = AnimationController(
//       duration: const Duration(milliseconds: 300),
//       vsync: this,
//     );

//     // If the icon starts as favorited, ensure it's in the final state of the animation
//     if (_isFavorited) {
//       _animationController.forward();
//     }
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   Future<void> _toggleFavorite() async {
//     setState(() {
//       _isLoading = true; // Disable the button while loading
//     });

//     // Call the addToFav function with the course ID
//     final result = await addToFav(widget.courseId);

//     result.fold(
//       (failureMessage) {
//         // Show a snackbar or other UI element for failure
//         ToastManager.showError(failureMessage);
//       },
//       (newCount) {
//         // If successful, update the favorite state and notify the parent widget
//         setState(() {
//           _isFavorited = !_isFavorited;
//         });
//         widget.onFavoriteChanged(newCount);

//         // Show a success snackbar
//         // ToastManager.showSuccess(successMessage, true);
//       },
//     );

//     // Re-enable the button
//     setState(() {
//       _isLoading = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 10.0),
//       child: GestureDetector(
//         onTap:
//             _isLoading ? null : _toggleFavorite, // Disable button while loading
//         child: Container(
//           width: widget.size,
//           height: widget.size,
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//             color: AppColors.whiteColor,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: AnimatedSwitcher(
//             duration: const Duration(milliseconds: 300),
//             transitionBuilder: (child, animation) =>
//                 ScaleTransition(scale: animation, child: child),
//             child: Icon(
//               _isFavorited ? Icons.favorite : Icons.favorite_border,
//               key: ValueKey(_isFavorited),
//               size: 25.sp,
//               color:
//                   _isFavorited ? AppColors.primaryColor : AppColors.blackColor,
//             ),
//           ),
//           // child: _isLoading
//           //     ? const CircularProgressIndicator(
//           //         valueColor:
//           //             AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
//           //         strokeWidth: 3,
//           //       )
//           //     : Icon(
//           //         _isFavorited ? Icons.favorite : Icons.favorite_border,
//           //         size: 25.sp,
//           //         color: _isFavorited
//           //             ? AppColors.primaryColor
//           //             : AppColors.blackColor,
//           //       ),
//         ),
//       ),
//     );
//   }

//   // The addToFav function
//   Future<z.Either<String, int>> addToFav(String id) async {
//     try {
//       d.Response response = await DioImpl().post(
//           endPoint: EndPoints.favTappedEndpoint, data: {"product_id": id});
//       if (response.statusCode == 200) {
//         ToastManager.showSuccess(response.data['message'], true);
//         return z.Right(response.data['data']['favorites_count']);
//       } else {
//         return z.Left(response.data['message']);
//       }
//     } on PrimaryServerException catch (_) {
//       return z.Left(_.message);
//     } catch (e) {
//       return z.Left(AppStrings.failTolLoadData.tr);
//     }
//   }
// }
