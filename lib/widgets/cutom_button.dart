// import 'package:flutter/cupertino.dart';
//
// import '../constants/AppColors.dart';
//
// class CustomImageButton extends StatelessWidget {
//   bool? isResponsive;
//   double? width;
//   String title;
//   IconData iconData;
//   VoidCallback onClick;
//
//   CustomImageButton({
//     super.key,
//     this.width,
//     required this.title,
//     required this.iconData,
//     required this.onClick,
//     this.isResponsive = false
//   });
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
// //      padding: const EdgeInsets.only(top: 16.0),
//       width: width,
//       height: 60,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10), color: kPrimaryColor),
//       child: ElevatedButton(
//           onPressed: onClick,
//           child: Row(
//             children: [
//               Icon(iconData),
//
//               SizedBox(width: 10,),
//
//               Text(title)
//             ],
//           )
//       ),
//     );
//   }
// }
