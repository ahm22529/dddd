// import 'package:flutter/material.dart';

// class ShowCaseView extends StatelessWidget {
//   const ShowCaseView({
//     super.key,
//     required this.description,
//     required this.title,
//     required this.child,
//     required this.globalKey, // Receive the globalKey from the parent
//     this.shape,
//   });

//   final GlobalKey globalKey; // Use the key from the parent
//   final String description;
//   final String title;
//   final Widget child;
//   final ShapeBorder? shape;

//   @override
//   Widget build(BuildContext context) {
//     return Showcase(
//       key: globalKey, // Pass the correct key here
//       description: description,
//       title: title,
//       child: child,
//       targetShapeBorder: shape ?? const CircleBorder(),
//     );
//   }
// }
