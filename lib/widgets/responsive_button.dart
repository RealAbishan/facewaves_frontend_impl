import 'package:flutter/cupertino.dart';

import '../constants/AppColors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({super.key, this.width, this.isResponsive = false});


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
          Image.asset("assets/arrow.png"),
        ],
      ),
    );
  }
}
