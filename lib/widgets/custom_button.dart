import 'package:flutter/cupertino.dart';

import '../constants/AppColors.dart';

class CustomResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  String text;
  IconData iconData;
  final Color color;

  CustomResponsiveButton({super.key,
    this.width,
    required this.iconData,
    required this.text,
    this.color = bWhite,
    this.isResponsive = false});


  @override
  Widget build(BuildContext context) {
    return Container(
//      padding: const EdgeInsets.only(top: 16.0),
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: kPrimaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(text, style:
            TextStyle(
              color: color,
              fontSize: 20
            ),),
          SizedBox(width: 20,),
          Icon(iconData,
          color: bWhite,
          )
        ],
      ),
    );
  }
}
